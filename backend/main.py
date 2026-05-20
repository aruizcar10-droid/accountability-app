from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from supabase import create_client
from dotenv import load_dotenv
from urllib.parse import unquote
import os

load_dotenv()

app = FastAPI(title="Accountability API")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

supabase = create_client(
    os.getenv("SUPABASE_URL"),
    os.getenv("SUPABASE_KEY")
)

@app.get("/")
def root():
    return {"status": "ok", "mensaje": "API funcionando"}

@app.get("/personas/{nombre}")
def get_persona(nombre: str):
    nombre_limpio = unquote(nombre).lower().replace("-", " ")
    result = supabase.table("personas").select("*").ilike("nombre_normalizado", f"%{nombre_limpio}%").execute()
    if not result.data:
        raise HTTPException(status_code=404, detail="No encontrado")
    persona = result.data[0]
    pid = persona["id"]
    persona["puntuaciones"] = supabase.table("puntuaciones").select("*").eq("persona_id", pid).execute().data
    persona["evidencias"] = supabase.table("evidencias").select("*").eq("persona_id", pid).execute().data
    return persona

@app.get("/ranking")
def get_ranking(categoria: str = "politico", pais: str = "ES"):
    result = supabase.table("personas").select(
        "nombre, partido, cargo_actual, puntuaciones(total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion)"
    ).eq("categoria", categoria).eq("pais", pais).eq("activo", True).execute()
    personas = [p for p in result.data if p.get("puntuaciones")]
    return sorted(personas, key=lambda x: x["puntuaciones"][0]["total"], reverse=True)
