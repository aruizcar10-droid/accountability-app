-- EVIDENCIAS POSITIVAS - explican por qué puntúan alto en bloques sin datos negativos
-- Filosofía: inocente hasta que se demuestre. Si no hay dato negativo, explicamos por qué está limpio.

-- =====================
-- YOLANDA DÍAZ
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el ejercicio del cargo. Sin puertas giratorias registradas en el Portal de Transparencia', 0, 'Portal Transparencia AGE - Oficina Conflictos de Interés', 'https://transparencia.gob.es/transparencia/transparencia_Home/index/PublicidadActiva/AltosCargos/Autorizacion-de-actividad-privada-en-altos-cargos.html', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'institucional', 'positivo', 'Sin desacatos judiciales ni sanciones por incumplimiento de la Ley de Transparencia documentadas', 0, 'Tribunal Constitucional + Consejo de Transparencia', 'https://transparencia.gob.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'actividad', 'positivo', 'Diputada activa desde la XI Legislatura. Portavoz en Comisión de Trabajo. Cargo ejecutivo de alto nivel justifica ausencias en votaciones', 0, 'Congreso.es - Ficha oficial diputada', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'yolanda diaz';

-- =====================
-- PEDRO SÁNCHEZ
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato. Sin puertas giratorias registradas en Oficina de Conflictos de Interés', 0, 'Portal Transparencia AGE - Oficina Conflictos de Interés', 'https://transparencia.gob.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'pedro sanchez';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Doctor en Economía por la Universidad Camilo José Cela. Licenciado en Ciencias Económicas. Titulación verificada en ficha oficial del Congreso', 0, 'Congreso.es - Ficha oficial diputado', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'pedro sanchez';

-- =====================
-- ISABEL DÍAZ AYUSO
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el ejercicio del cargo. Sin puertas giratorias registradas en Oficina de Conflictos de Interés de la Comunidad de Madrid', 0, 'Portal Transparencia Comunidad de Madrid', 'https://www.comunidad.madrid/transparencia', '2025-01-01', true, 'oficial_secundaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'isabel diaz ayuso';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciada en Ciencias de la Información (Periodismo) por la Universidad Complutense de Madrid. Verificado en ficha oficial de la Asamblea de Madrid', 0, 'Asamblea de Madrid - Ficha oficial diputada', 'https://www.asambleamadrid.es', '2025-01-01', true, 'oficial_secundaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'isabel diaz ayuso';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'actividad', 'positivo', 'Presidenta en ejercicio de la Comunidad de Madrid desde 2021. Agenda pública publicada regularmente en el portal de transparencia autonómico', 0, 'Portal Transparencia Comunidad de Madrid', 'https://www.comunidad.madrid/transparencia', '2025-01-01', true, 'oficial_secundaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'isabel diaz ayuso';

-- =====================
-- SANTIAGO ABASCAL
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato como diputado. Sin puertas giratorias registradas en el BORME', 0, 'BORME - Registro Mercantil', 'https://www.boe.es/diario_borme', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'santiago abascal';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Experiencia política desde 2009 como diputado en el Parlamento Vasco. Trayectoria verificada en ficha oficial del Congreso de los Diputados', 0, 'Congreso.es - Ficha oficial diputado', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'santiago abascal';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'coherencia', 'positivo', 'Posición ideológica consistente a lo largo de su trayectoria. Sin cambios de partido documentados', 0, 'Congreso.es - Ficha oficial diputado', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'santiago abascal';

-- =====================
-- CARLES PUIGDEMONT
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'economico', 'positivo', 'Sin datos de irregularidades fiscales o patrimoniales documentadas en fuentes oficiales durante su mandato como president', 0, 'Generalitat de Catalunya - Portal Transparencia', 'https://govern.cat', '2017-01-01', true, 'oficial_secundaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'carles puigdemont';

-- =====================
-- IONE BELARRA
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato. Sin puertas giratorias registradas. Dedicación exclusiva al cargo verificada', 0, 'Portal Transparencia AGE + BORME', 'https://transparencia.gob.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'ione belarra';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'institucional', 'positivo', 'Sin desacatos judiciales ni sanciones por incumplimiento de la Ley de Transparencia documentadas en ningún tribunal', 0, 'Tribunal Constitucional + Poder Judicial', 'https://poderjudicial.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'ione belarra';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'actividad', 'positivo', 'Diputada activa desde la XI Legislatura (2015). Portavoz en Comisión de Igualdad, Vivienda y Agenda Urbana en la XV Legislatura. Vocal de la Diputación Permanente', 0, 'Congreso.es - Ficha oficial diputada XV Legislatura', 'https://www.congreso.es/es/busqueda-de-diputados?p_p_id=diputadomodule&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&mostrarFicha=true&codParlamentario=262&idLegislatura=XV', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'ione belarra';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'coherencia', 'positivo', 'Sin cambios de partido durante el mandato. Posición consistente en políticas sociales, vivienda e igualdad a lo largo de su trayectoria', 0, 'Congreso.es - Histórico de grupos parlamentarios', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'ione belarra';

-- =====================
-- ALBERTO GARZÓN
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato. Dejó de cobrar derechos editoriales al ser ministro. Declarado en Portal de Transparencia', 0, 'Portal Transparencia AGE', 'https://transparencia.gob.es', '2023-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'alberto garzon';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'institucional', 'positivo', 'Sin desacatos judiciales ni sanciones por incumplimiento de la Ley de Transparencia documentadas', 0, 'Poder Judicial + Consejo de Transparencia', 'https://poderjudicial.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'alberto garzon';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciado en Economía por la Universidad de Málaga. Diputado desde la X Legislatura (2011). Experiencia política y académica verificada en ficha del Congreso', 0, 'Congreso.es - Ficha oficial diputado', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'alberto garzon';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'actividad', 'positivo', 'Diputado activo desde 2011. Ex ministro de Consumo. Participación activa en comisiones parlamentarias documentada en Congreso.es', 0, 'Congreso.es - Ficha oficial diputado', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'alberto garzon';

-- =====================
-- IRENE MONTERO
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato. Sin puertas giratorias registradas en Portal de Transparencia', 0, 'Portal Transparencia AGE', 'https://transparencia.gob.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'irene montero';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'institucional', 'positivo', 'Sin desacatos judiciales ni sanciones por incumplimiento de la Ley de Transparencia documentadas', 0, 'Poder Judicial + Consejo de Transparencia', 'https://poderjudicial.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'irene montero';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciada en Filosofía por la Universidad Complutense de Madrid. Diputada desde la XIII Legislatura. Verificado en ficha oficial del Congreso', 0, 'Congreso.es - Ficha oficial diputada', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'irene montero';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'actividad', 'positivo', 'Diputada activa desde la XIII Legislatura. Ex Ministra de Igualdad. Portavoz en comisiones de igualdad documentado en Congreso.es', 0, 'Congreso.es - Ficha oficial diputada', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'irene montero';

-- =====================
-- ALBERTO NÚÑEZ FEIJÓO
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas como senador y líder de la oposición. Sin puertas giratorias registradas en el BORME durante el mandato actual', 0, 'BORME + Portal Transparencia AGE', 'https://www.boe.es/diario_borme', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'institucional', 'positivo', 'Sin desacatos judiciales ni sanciones por incumplimiento institucional documentadas en ningún tribunal', 0, 'Poder Judicial CENDOJ', 'https://poderjudicial.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciado en Derecho por la Universidad de Santiago de Compostela. Funcionario de carrera del Cuerpo Superior de la Xunta de Galicia. Verificado en ficha oficial', 0, 'Senado.es - Ficha oficial senador', 'https://www.senado.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo';

-- =====================
-- MARIANO RAJOY
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Registrador de la Propiedad por oposición. Licenciado en Derecho por la Universidad de Santiago de Compostela. Funcionario de carrera verificado', 0, 'Registro de la Propiedad + Congreso.es ficha histórica', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'mariano rajoy';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'actividad', 'positivo', 'Presidente del Gobierno 2011-2018. Diputado durante múltiples legislaturas. Actividad parlamentaria extensa documentada en Congreso.es', 0, 'Congreso.es - Ficha histórica diputado', 'https://www.congreso.es', '2018-06-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'mariano rajoy';

-- =====================
-- ESPERANZA AGUIRRE
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciada en Derecho y Filosofía y Letras por la Universidad Complutense de Madrid. Funcionaria de carrera. Verificado en ficha oficial del Senado', 0, 'Senado.es - Ficha histórica', 'https://www.senado.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'esperanza aguirre';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'actividad', 'positivo', 'Presidenta Comunidad de Madrid 2003-2012. Senadora, Ministra y Presidenta del Senado. Trayectoria política extensa documentada en registros oficiales', 0, 'Senado.es + Asamblea de Madrid - Fichas históricas', 'https://www.senado.es', '2012-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'esperanza aguirre';

-- =====================
-- JOSÉ LUIS ÁBALOS
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciado en Geografía e Historia por la Universidad de Valencia. Docente de secundaria. Diputado desde la XII Legislatura. Verificado en Congreso.es', 0, 'Congreso.es - Ficha oficial diputado', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'jose luis abalos';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'economico', 'positivo', 'Declaración de bienes presentada en plazo como ministro y diputado. Patrimonio declarado en Portal de Transparencia AGE', 0, 'Portal Transparencia AGE', 'https://transparencia.gob.es', '2023-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'jose luis abalos';

-- =====================
-- PABLO IGLESIAS
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'legal', 'positivo', 'Sin condenas penales ni civiles firmes. Sin imputaciones activas documentadas en ningún tribunal', 0, 'Poder Judicial CENDOJ', 'https://poderjudicial.es', '2021-05-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'pablo iglesias';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato. Sin puertas giratorias registradas tras el cese como vicepresidente', 0, 'Portal Transparencia AGE + BORME', 'https://transparencia.gob.es', '2021-05-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'pablo iglesias';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Doctor en Ciencias Políticas por la Universidad Complutense de Madrid. Profesor universitario. Titulación verificada en ficha oficial del Congreso', 0, 'Congreso.es - Ficha oficial diputado', 'https://www.congreso.es', '2021-05-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'pablo iglesias';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'institucional', 'positivo', 'Sin desacatos judiciales ni sanciones por incumplimiento institucional documentadas durante su mandato como vicepresidente', 0, 'Poder Judicial + Tribunal Constitucional', 'https://poderjudicial.es', '2021-05-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'pablo iglesias';

-- =====================
-- ÍÑIGO ERREJÓN
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'economico', 'positivo', 'Sin irregularidades fiscales o patrimoniales documentadas en fuentes oficiales durante su mandato como diputado', 0, 'Portal Transparencia AGE + Congreso.es', 'https://transparencia.gob.es', '2024-10-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'inigo errejon';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Doctor en Ciencias Políticas por la Universidad Complutense de Madrid. Profesor universitario. Titulación verificada en ficha oficial del Congreso', 0, 'Congreso.es - Ficha oficial diputado', 'https://www.congreso.es', '2024-10-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'inigo errejon';

-- =====================
-- ROCÍO MONASTERIO
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato como diputada autonómica. Sin puertas giratorias registradas en el BORME', 0, 'BORME - Registro Mercantil', 'https://www.boe.es/diario_borme', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'rocio monasterio';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'institucional', 'positivo', 'Sin desacatos judiciales ni sanciones por incumplimiento institucional documentadas en ningún tribunal', 0, 'Poder Judicial CENDOJ', 'https://poderjudicial.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'rocio monasterio';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'coherencia', 'positivo', 'Sin cambios de partido durante el mandato. Posición ideológica consistente documentada en actas de la Asamblea de Madrid', 0, 'Asamblea de Madrid - Actas oficiales', 'https://www.asambleamadrid.es', '2025-01-01', true, 'oficial_secundaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'rocio monasterio';

-- =====================
-- ORIOL JUNQUERAS
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'economico', 'positivo', 'Sin irregularidades fiscales o patrimoniales documentadas más allá de la condena por malversación ya registrada', 0, 'Portal Transparencia Generalitat + Tribunal Supremo', 'https://poderjudicial.es', '2019-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'oriol junqueras';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Doctor en Historia por la Universitat Autònoma de Barcelona. Profesor universitario. Titulación verificada en registros académicos públicos', 0, 'UAB - Registros académicos públicos', 'https://www.uab.cat', '2019-01-01', true, 'oficial_secundaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'oriol junqueras';

-- =====================
-- PERE ARAGONÈS
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'legal', 'positivo', 'Sin condenas penales ni civiles firmes. Sin imputaciones activas documentadas en ningún tribunal español', 0, 'Poder Judicial CENDOJ', 'https://poderjudicial.es', '2024-08-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'pere aragones';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato. Sin puertas giratorias registradas en el BORME o registros catalanes', 0, 'BORME + Registre Mercantil de Catalunya', 'https://www.boe.es/diario_borme', '2024-08-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'pere aragones';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'institucional', 'positivo', 'Sin desacatos judiciales ni sanciones por incumplimiento institucional documentadas. Gestión dentro del marco legal durante su mandato', 0, 'Tribunal Constitucional + Poder Judicial', 'https://poderjudicial.es', '2024-08-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'pere aragones';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciado en Derecho y Economía por la Universitat Oberta de Catalunya. Experiencia en gestión pública desde 2006. Verificado en ficha oficial del Parlament', 0, 'Parlament de Catalunya - Ficha oficial', 'https://www.parlament.cat', '2024-08-01', true, 'oficial_secundaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'pere aragones';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'actividad', 'positivo', 'President de la Generalitat de Catalunya 2021-2024. Actividad de gobierno documentada en el Diari Oficial de la Generalitat de Catalunya (DOGC)', 0, 'DOGC - Diari Oficial de la Generalitat de Catalunya', 'https://dogc.gencat.cat', '2024-08-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'pere aragones';

-- =====================
-- SALVADOR ILLA
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'legal', 'positivo', 'Sin condenas penales ni civiles firmes. Sin imputaciones activas documentadas en ningún tribunal', 0, 'Poder Judicial CENDOJ', 'https://poderjudicial.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'salvador illa';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato. Sin puertas giratorias registradas en BORME o registros de conflictos de interés', 0, 'BORME + Portal Transparencia AGE', 'https://transparencia.gob.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'salvador illa';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'institucional', 'positivo', 'Sin desacatos judiciales ni sanciones por incumplimiento institucional documentadas en ningún tribunal', 0, 'Tribunal Constitucional + Poder Judicial', 'https://poderjudicial.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'salvador illa';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciado en Filosofía por la Universidad de Barcelona y MBA por la Universidad de Navarra. Alcalde de La Roca del Vallès 1995-2005. Verificado en registros oficiales', 0, 'Parlament de Catalunya - Ficha oficial', 'https://www.parlament.cat', '2025-01-01', true, 'oficial_secundaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'salvador illa';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'actividad', 'positivo', 'President de la Generalitat de Catalunya desde agosto 2024. Ministro de Sanidad 2020-2021. Actividad pública documentada en DOGC y BOE', 0, 'DOGC + BOE', 'https://dogc.gencat.cat', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'salvador illa';

-- =====================
-- ALBERT RIVERA
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'legal', 'positivo', 'Sin condenas penales ni civiles firmes. Sin imputaciones activas documentadas en ningún tribunal durante su mandato', 0, 'Poder Judicial CENDOJ', 'https://poderjudicial.es', '2019-11-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'albert rivera';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'economico', 'positivo', 'Sin irregularidades fiscales o patrimoniales documentadas durante su mandato. Declaración de bienes presentada en plazo en Congreso.es', 0, 'Congreso.es - Declaración de bienes', 'https://www.congreso.es', '2019-11-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'albert rivera';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato. Sin puertas giratorias registradas en el BORME durante el ejercicio del cargo', 0, 'BORME - Registro Mercantil', 'https://www.boe.es/diario_borme', '2019-11-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'albert rivera';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciado en Derecho por la Universidad Ramón Llull (ESADE). Abogado. Verificado en ficha oficial del Congreso de los Diputados', 0, 'Congreso.es - Ficha oficial diputado', 'https://www.congreso.es', '2019-11-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'albert rivera';

-- =====================
-- INÉS ARRIMADAS
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'legal', 'positivo', 'Sin condenas penales ni civiles firmes. Sin imputaciones activas documentadas en ningún tribunal', 0, 'Poder Judicial CENDOJ', 'https://poderjudicial.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'ines arrimadas';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'economico', 'positivo', 'Sin irregularidades fiscales o patrimoniales documentadas. Declaración de bienes presentada en plazo durante su mandato como diputada', 0, 'Congreso.es - Declaración de bienes', 'https://www.congreso.es', '2023-07-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'ines arrimadas';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato. Sin puertas giratorias registradas en el BORME', 0, 'BORME - Registro Mercantil', 'https://www.boe.es/diario_borme', '2023-07-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'ines arrimadas';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'institucional', 'positivo', 'Sin desacatos judiciales ni sanciones por incumplimiento institucional documentadas durante su mandato', 0, 'Tribunal Constitucional + Poder Judicial', 'https://poderjudicial.es', '2023-07-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'ines arrimadas';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciada en Derecho por la Universidad de Cádiz. Abogada. Verificado en ficha oficial del Congreso de los Diputados', 0, 'Congreso.es - Ficha oficial diputada', 'https://www.congreso.es', '2023-07-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'ines arrimadas';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'actividad', 'positivo', 'Diputada activa en el Congreso desde 2015. Líder del grupo parlamentario de Ciudadanos. Actividad documentada en Congreso.es', 0, 'Congreso.es - Ficha oficial diputada', 'https://www.congreso.es', '2023-07-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'ines arrimadas';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'coherencia', 'positivo', 'Sin cambios de partido durante el mandato. Posición de centro liberal consistente a lo largo de su trayectoria documentada en Congreso.es', 0, 'Congreso.es - Histórico de grupos parlamentarios', 'https://www.congreso.es', '2023-07-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'ines arrimadas';

-- =====================
-- MARÍA JESÚS MONTERO
-- =====================
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'conflictos', 'positivo', 'Sin cargos en empresas privadas durante el mandato. Sin puertas giratorias registradas en Portal de Transparencia AGE', 0, 'Portal Transparencia AGE', 'https://transparencia.gob.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'maria jesus montero';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'institucional', 'positivo', 'Sin desacatos judiciales ni sanciones por incumplimiento institucional documentadas durante su mandato', 0, 'Tribunal Constitucional + Poder Judicial', 'https://poderjudicial.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'maria jesus montero';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciada en Medicina y Cirugía por la Universidad de Sevilla. Especialista en Pediatría. Médica de carrera. Verificado en Congreso.es', 0, 'Congreso.es - Ficha oficial diputada', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'maria jesus montero';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'coherencia', 'positivo', 'Sin cambios de partido durante el mandato. Diputada y ministra del PSOE con posición consistente en política fiscal documentada', 0, 'Congreso.es - Histórico de grupos parlamentarios', 'https://www.congreso.es', '2025-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'maria jesus montero';
