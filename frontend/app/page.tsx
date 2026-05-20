'use client'
import { useEffect, useState } from 'react'
import axios from 'axios'

interface Puntuacion {
  total: number
  bloque_legal: number
  bloque_economico: number
  bloque_conflictos: number
  bloque_actividad: number
  bloque_coherencia: number
  bloque_institucional: number
  bloque_preparacion: number
}

interface Evidencia {
  bloque: string
  tipo: string
  descripcion: string
  impacto: number
  fuente_nombre: string
  fuente_url: string
  fuente_2_nombre?: string
  fuente_2_url?: string
  tipo_fuente: string
  estado_verificacion: string
}

interface Persona {
  nombre: string
  partido: string
  cargo_actual: string
  puntuaciones: Puntuacion[]
  evidencias?: Evidencia[]
}

function getColor(score: number) {
  if (score >= 75) return '#1D9E75'
  if (score >= 50) return '#BA7517'
  if (score >= 30) return '#D85A30'
  return '#E24B4A'
}

function getLabel(score: number) {
  if (score >= 75) return 'Notable'
  if (score >= 50) return 'Aprobado'
  if (score >= 30) return 'Insuficiente'
  return 'Muy deficiente'
}

function getFuenteIcon(tipo_fuente: string) {
  if (tipo_fuente === 'oficial_primaria') return { icon: '✅', label: 'Fuente oficial primaria' }
  if (tipo_fuente === 'oficial_secundaria') return { icon: '🔵', label: 'Fuente oficial' }
  if (tipo_fuente === 'no_oficial_doble') return { icon: '🔶', label: 'Verificado por 2 fuentes' }
  return { icon: '⏳', label: 'Pendiente de verificación' }
}

const bloques = [
  { key: 'bloque_legal', label: 'Integridad legal', max: 30, id: 'legal' },
  { key: 'bloque_economico', label: 'Transparencia económica', max: 20, id: 'economico' },
  { key: 'bloque_conflictos', label: 'Conflictos de interés', max: 15, id: 'conflictos' },
  { key: 'bloque_actividad', label: 'Actividad en el cargo', max: 15, id: 'actividad' },
  { key: 'bloque_coherencia', label: 'Coherencia', max: 10, id: 'coherencia' },
  { key: 'bloque_institucional', label: 'Comportamiento institucional', max: 10, id: 'institucional' },
  { key: 'bloque_preparacion', label: 'Preparación para el cargo', max: 10, id: 'preparacion' },
]

export default function Home() {
  const [personas, setPersonas] = useState<Persona[]>([])
  const [busqueda, setBusqueda] = useState('')
  const [seleccionada, setSeleccionada] = useState<Persona | null>(null)
  const [bloqueAbierto, setBloqueAbierto] = useState<string | null>(null)
  const [cargando, setCargando] = useState(true)

  useEffect(() => {
    axios.get('http://127.0.0.1:8000/ranking')
      .then(res => { setPersonas(res.data); setCargando(false) })
      .catch(() => setCargando(false))
  }, [])

  const cargarDetalle = async (persona: Persona) => {
    if (seleccionada?.nombre === persona.nombre) {
      setSeleccionada(null)
      setBloqueAbierto(null)
      return
    }
    try {
      const nombreLimpio = persona.nombre
        .normalize('NFD')
        .replace(/[\u0300-\u036f]/g, '')
        .toLowerCase()
        .replace(/ /g, '-')
      const res = await axios.get(`http://127.0.0.1:8000/personas/${nombreLimpio}`)
      setSeleccionada(res.data)
      setBloqueAbierto(null)
    } catch {
      setSeleccionada(persona)
    }
  }

  const filtradas = personas.filter(p =>
    p.nombre.toLowerCase().includes(busqueda.toLowerCase())
  )

  return (
    <main style={{ maxWidth: 800, margin: '0 auto', padding: '2rem 1rem', fontFamily: 'system-ui, sans-serif' }}>
      <div style={{ marginBottom: '2rem' }}>
        <h1 style={{ fontSize: 28, fontWeight: 600, marginBottom: 4 }}>Índice de integridad pública</h1>
        <p style={{ color: '#666', fontSize: 14 }}>Puntuación 0-100 basada en datos públicos verificados</p>
      </div>

      <input
        type="text"
        placeholder="Buscar político..."
        value={busqueda}
        onChange={e => setBusqueda(e.target.value)}
        style={{
          width: '100%', padding: '10px 14px', fontSize: 15,
          border: '1px solid #ddd', borderRadius: 8, marginBottom: '1.5rem',
          outline: 'none', boxSizing: 'border-box'
        }}
      />

      {cargando && <p style={{ color: '#999' }}>Cargando datos...</p>}

      <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
        {filtradas.map((p, i) => {
          const punt = p.puntuaciones?.[0]
          if (!punt) return null
          const color = getColor(punt.total)
          const abierta = seleccionada?.nombre === p.nombre

          return (
            <div key={i} style={{ border: abierta ? `2px solid ${color}` : '1px solid #e5e5e5', borderRadius: 12, background: '#fff' }}>
              <div onClick={() => cargarDetalle(p)} style={{ padding: '1rem 1.25rem', cursor: 'pointer' }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: 12 }}>
                  <div style={{
                    width: 40, height: 40, borderRadius: '50%',
                    background: color + '20', display: 'flex', alignItems: 'center',
                    justifyContent: 'center', fontSize: 13, fontWeight: 600, color, flexShrink: 0
                  }}>
                    {p.nombre.split(' ').map((n: string) => n[0]).slice(0, 2).join('')}
                  </div>
                  <div style={{ flex: 1 }}>
                    <div style={{ fontWeight: 500, fontSize: 15 }}>{p.nombre}</div>
                    <div style={{ fontSize: 12, color: '#888', marginTop: 2 }}>{p.cargo_actual}</div>
                  </div>
                  <div style={{ textAlign: 'right' }}>
                    <div style={{ fontSize: 26, fontWeight: 600, color }}>{punt.total}</div>
                    <div style={{ fontSize: 11, color: '#999' }}>{getLabel(punt.total)}</div>
                  </div>
                </div>
                <div style={{ marginTop: 10, height: 3, background: '#f0f0f0', borderRadius: 2, overflow: 'hidden' }}>
                  <div style={{ width: `${punt.total}%`, height: '100%', background: color, borderRadius: 2 }} />
                </div>
              </div>

              {abierta && seleccionada && (
                <div style={{ borderTop: '1px solid #f0f0f0', padding: '0.75rem 1.25rem 1rem' }}>
                  <p style={{ fontSize: 12, color: '#999', marginBottom: 10 }}>Haz clic en un bloque para ver el detalle y las fuentes</p>
                  {bloques.map(b => {
                    const val = punt[b.key as keyof Puntuacion] as number
                    const pct = Math.round((val / b.max) * 100)
                    const bloqueColor = getColor((val / b.max) * 100)
                    const estaAbierto = bloqueAbierto === b.id
                    const evidenciasBloque = seleccionada.evidencias?.filter(e => e.bloque === b.id) || []

                    return (
                      <div key={b.key} style={{ marginBottom: 6 }}>
                        <div
                          onClick={() => setBloqueAbierto(estaAbierto ? null : b.id)}
                          style={{
                            display: 'flex', alignItems: 'center', gap: 8,
                            padding: '8px 10px', borderRadius: 8, cursor: 'pointer',
                            background: estaAbierto ? '#f8f8f8' : 'transparent',
                            border: estaAbierto ? '1px solid #eee' : '1px solid transparent'
                          }}
                        >
                          <span style={{ fontSize: 12, color: '#555', width: 185, flexShrink: 0 }}>{b.label}</span>
                          <div style={{ flex: 1, height: 5, background: '#f0f0f0', borderRadius: 3, overflow: 'hidden' }}>
                            <div style={{ width: `${pct}%`, height: '100%', background: bloqueColor, borderRadius: 3 }} />
                          </div>
                          <span style={{ fontSize: 12, fontWeight: 600, width: 38, textAlign: 'right', color: bloqueColor }}>{val}/{b.max}</span>
                          <span style={{ fontSize: 11, color: '#bbb', marginLeft: 4 }}>{estaAbierto ? '▲' : '▼'}</span>
                        </div>

                        {estaAbierto && (
                          <div style={{ margin: '4px 0 8px 10px', padding: '10px 12px', background: '#fafafa', borderRadius: 8, borderLeft: `3px solid ${bloqueColor}` }}>
                            <div style={{ fontSize: 12, color: '#666', marginBottom: 10 }}>
                              <strong>Puntuación: {val} de {b.max} pts ({pct}%)</strong>
                            </div>

                            {evidenciasBloque.length > 0 ? (
                              <div>
                                {evidenciasBloque.map((e, ei) => {
                                  const fuenteInfo = getFuenteIcon(e.tipo_fuente)
                                  return (
                                    <div key={ei} style={{
                                      marginBottom: 10, padding: '10px 12px', borderRadius: 8,
                                      background: e.tipo === 'positivo' ? '#f0fdf4' : '#fff5f5',
                                      border: `1px solid ${e.tipo === 'positivo' ? '#bbf7d0' : '#fecaca'}`
                                    }}>
                                      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: 8 }}>
                                        <span style={{ fontSize: 13, color: '#333', flex: 1, lineHeight: 1.4 }}>{e.descripcion}</span>
                                        <span style={{
                                          fontSize: 12, fontWeight: 600, marginLeft: 10, flexShrink: 0,
                                          color: e.tipo === 'positivo' ? '#16a34a' : '#dc2626'
                                        }}>
                                          {e.tipo === 'positivo' ? '+' : ''}{e.impacto} pts
                                        </span>
                                      </div>

                                      <div style={{ display: 'flex', flexDirection: 'column', gap: 4 }}>
                                        {e.fuente_nombre && (
                                          <div style={{ display: 'flex', alignItems: 'center', gap: 6 }}>
                                            <span style={{ fontSize: 11 }}>{fuenteInfo.icon}</span>
                                            {e.fuente_url ? (
                                              <a href={e.fuente_url} target="_blank" rel="noopener noreferrer"
                                                onClick={ev => ev.stopPropagation()}
                                                style={{ fontSize: 11, color: '#2563eb', textDecoration: 'none', fontWeight: 500 }}>
                                                {e.fuente_nombre} →
                                              </a>
                                            ) : (
                                              <span style={{ fontSize: 11, color: '#888' }}>{e.fuente_nombre}</span>
                                            )}
                                          </div>
                                        )}
                                        {e.fuente_2_nombre && (
                                          <div style={{ display: 'flex', alignItems: 'center', gap: 6 }}>
                                            <span style={{ fontSize: 11 }}>🔶</span>
                                            {e.fuente_2_url ? (
                                              <a href={e.fuente_2_url} target="_blank" rel="noopener noreferrer"
                                                onClick={ev => ev.stopPropagation()}
                                                style={{ fontSize: 11, color: '#2563eb', textDecoration: 'none', fontWeight: 500 }}>
                                                {e.fuente_2_nombre} →
                                              </a>
                                            ) : (
                                              <span style={{ fontSize: 11, color: '#888' }}>{e.fuente_2_nombre}</span>
                                            )}
                                          </div>
                                        )}
                                      </div>
                                    </div>
                                  )
                                })}
                              </div>
                            ) : (
                              <p style={{ fontSize: 12, color: '#aaa', fontStyle: 'italic' }}>
                                Sin datos negativos verificados en este bloque.
                              </p>
                            )}
                          </div>
                        )}
                      </div>
                    )
                  })}
                </div>
              )}
            </div>
          )
        })}
      </div>

      <div style={{ marginTop: '2rem', padding: '1rem', background: '#f9f9f9', borderRadius: 8 }}>
        <p style={{ fontSize: 11, color: '#999', margin: 0 }}>
          ✅ Fuente oficial primaria (BOE, CENDOJ, Congreso, Tribunal Supremo) &nbsp;·&nbsp;
          🔵 Fuente oficial secundaria &nbsp;·&nbsp;
          🔶 Verificado por 2 fuentes independientes
        </p>
      </div>
    </main>
  )
}
