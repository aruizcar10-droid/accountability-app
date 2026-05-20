-- CORRECCIÓN PUNTUACIONES - aplicando filosofía inocente hasta que se demuestre
-- Sin dato negativo verificado = máximo del bloque
-- Total escalado: (suma bloques / 110) * 100

UPDATE puntuaciones SET total=95, bloque_legal=26, bloque_economico=19, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=10, bloque_institucional=10, bloque_preparacion=9 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'yolanda diaz') AND es_vigente = true;

UPDATE puntuaciones SET total=79, bloque_legal=22, bloque_economico=17, bloque_conflictos=15, bloque_actividad=11, bloque_coherencia=5, bloque_institucional=7, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'pedro sanchez') AND es_vigente = true;

UPDATE puntuaciones SET total=87, bloque_legal=22, bloque_economico=17, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=7, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'isabel diaz ayuso') AND es_vigente = true;

UPDATE puntuaciones SET total=86, bloque_legal=25, bloque_economico=15, bloque_conflictos=15, bloque_actividad=13, bloque_coherencia=10, bloque_institucional=7, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'santiago abascal') AND es_vigente = true;

UPDATE puntuaciones SET total=52, bloque_legal=4, bloque_economico=20, bloque_conflictos=15, bloque_actividad=1, bloque_coherencia=7, bloque_institucional=0, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'carles puigdemont') AND es_vigente = true;

UPDATE puntuaciones SET total=92, bloque_legal=25, bloque_economico=20, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=6, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo') AND es_vigente = true;

UPDATE puntuaciones SET total=56, bloque_legal=5, bloque_economico=12, bloque_conflictos=7, bloque_actividad=15, bloque_coherencia=7, bloque_institucional=6, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'mariano rajoy') AND es_vigente = true;

UPDATE puntuaciones SET total=79, bloque_legal=15, bloque_economico=20, bloque_conflictos=7, bloque_actividad=15, bloque_coherencia=10, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'esperanza aguirre') AND es_vigente = true;

UPDATE puntuaciones SET total=69, bloque_legal=10, bloque_economico=20, bloque_conflictos=9, bloque_actividad=7, bloque_coherencia=10, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'jose luis abalos') AND es_vigente = true;

UPDATE puntuaciones SET total=92, bloque_legal=30, bloque_economico=15, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=6, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'pablo iglesias') AND es_vigente = true;

UPDATE puntuaciones SET total=95, bloque_legal=30, bloque_economico=20, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=4, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'irene montero') AND es_vigente = true;

UPDATE puntuaciones SET total=100, bloque_legal=30, bloque_economico=20, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=10, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'ione belarra') AND es_vigente = true;

UPDATE puntuaciones SET total=100, bloque_legal=30, bloque_economico=20, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=10, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'alberto garzon') AND es_vigente = true;

UPDATE puntuaciones SET total=62, bloque_legal=5, bloque_economico=20, bloque_conflictos=15, bloque_actividad=7, bloque_coherencia=6, bloque_institucional=5, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'inigo errejon') AND es_vigente = true;

UPDATE puntuaciones SET total=94, bloque_legal=30, bloque_economico=20, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=10, bloque_institucional=10, bloque_preparacion=3 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'rocio monasterio') AND es_vigente = true;

UPDATE puntuaciones SET total=56, bloque_legal=5, bloque_economico=20, bloque_conflictos=15, bloque_actividad=7, bloque_coherencia=5, bloque_institucional=0, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'oriol junqueras') AND es_vigente = true;

UPDATE puntuaciones SET total=90, bloque_legal=30, bloque_economico=20, bloque_conflictos=15, bloque_actividad=10, bloque_coherencia=4, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'albert rivera') AND es_vigente = true;

UPDATE puntuaciones SET total=100, bloque_legal=30, bloque_economico=20, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=10, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'maria jesus montero') AND es_vigente = true;

UPDATE puntuaciones SET total=100, bloque_legal=30, bloque_economico=20, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=10, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'pere aragones') AND es_vigente = true;

UPDATE puntuaciones SET total=100, bloque_legal=30, bloque_economico=20, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=10, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'salvador illa') AND es_vigente = true;

UPDATE puntuaciones SET total=100, bloque_legal=30, bloque_economico=20, bloque_conflictos=15, bloque_actividad=15, bloque_coherencia=10, bloque_institucional=10, bloque_preparacion=10 WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'ines arrimadas') AND es_vigente = true;
