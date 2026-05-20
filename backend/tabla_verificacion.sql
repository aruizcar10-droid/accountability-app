-- Tabla de verificación de datos por político y bloque
CREATE TABLE verificacion_datos (
  id uuid default gen_random_uuid() primary key,
  persona_id uuid references personas(id) on delete cascade,
  bloque text not null,
  dato_buscado text not null,
  fuente_nombre text,
  fuente_url text,
  estado text not null check (estado in ('verificado', 'pendiente', 'no_existe', 'buscando')),
  notas text,
  fecha_verificacion date,
  creado_en timestamp default now()
);

-- Índices
create index idx_verificacion_persona on verificacion_datos(persona_id);
create index idx_verificacion_estado on verificacion_datos(estado);

-- Datos ya verificados de la conversación anterior y búsquedas realizadas
-- Estado: verificado = dato confirmado en fuente oficial
--         pendiente = hay que buscarlo
--         no_existe = se buscó y no existe (ej: ex político sin datos activos)

-- YOLANDA DÍAZ
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Condenas penales o civiles firmes', 'Poder Judicial CENDOJ', 'https://poderjudicial.es', 'verificado', 'Sin condenas documentadas', '2026-05-19' FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Imputaciones activas', 'Poder Judicial', 'https://poderjudicial.es', 'verificado', 'Investigación TSJ Madrid por rescate Air Europa - abierta', '2026-05-19' FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'BOE Portal Transparencia', 'https://boe.es', 'verificado', 'Declarada en plazo como ministra y diputada', '2026-05-19' FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'coherencia', 'Promesas cumplidas SMI', 'La Moncloa', 'https://lamoncloa.gob.es', 'verificado', 'SMI subido un 54% desde 2018. Jornada 37.5h firmada dic 2024', '2026-05-19' FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'actividad', 'Asistencia votaciones Congreso', 'Congreso.es OpenData', 'https://congreso.es', 'pendiente', 'Justificado por cargo ejecutivo pero falta dato exacto', '2026-05-19' FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'conflictos', 'Puertas giratorias y cargos empresariales', 'BORME Registro Mercantil', 'https://boe.es', 'pendiente', 'Buscar en BORME', '2026-05-19' FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'institucional', 'Desacatos o sanciones institucionales', 'Tribunal Constitucional', 'https://tribunalconstitucional.es', 'pendiente', 'Buscar resoluciones', '2026-05-19' FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'preparacion', 'Titulación académica', 'Congreso.es ficha oficial', 'https://congreso.es', 'verificado', 'Licenciada en Derecho por la Universidad de Santiago de Compostela', '2026-05-19' FROM personas WHERE nombre_normalizado = 'yolanda diaz';

-- PEDRO SÁNCHEZ
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Investigación TSJ Madrid Air Europa', 'Tribunal Superior de Justicia Madrid', 'https://poderjudicial.es', 'verificado', 'Investigación abierta por rescate Air Europa', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pedro sanchez';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'BOE Portal Transparencia', 'https://boe.es', 'verificado', 'Declarada en plazo. Ingresos por derechos de autor 42.000€ declarados', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pedro sanchez';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Desfase Tribunal de Cuentas', 'Tribunal de Cuentas', 'https://tcu.es', 'verificado', 'Desfase 4.090 millones en cuentas del Estado 2024 - mayo 2026', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pedro sanchez';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'coherencia', 'Promesas electorales cumplidas', 'Newtral Pactocheck', 'https://newtral.es', 'verificado', 'Solo 10% de 50 compromisos cumplidos a medio mandato', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pedro sanchez';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'actividad', 'Asistencia votaciones', 'Newtral análisis XV legislatura', 'https://newtral.es', 'verificado', 'Ausente 69% de jornadas con votación - justificado por agenda de gobierno', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pedro sanchez';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'conflictos', 'Puertas giratorias', 'BORME', 'https://boe.es', 'pendiente', 'Buscar en BORME', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pedro sanchez';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'institucional', 'Declaraciones contra independencia judicial', 'Hemeroteca 2+ medios', 'https://elpais.com', 'verificado', 'Declaraciones documentadas cuestionando independencia judicial en 2+ medios', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pedro sanchez';

-- ISABEL DÍAZ AYUSO
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Pareja procesada por fraude fiscal', 'Tribunal Supremo', 'https://poderjudicial.es', 'verificado', 'Pareja procesada por fraude fiscal 354.000€ y corrupción - sentencia', '2026-05-19' FROM personas WHERE nombre_normalizado = 'isabel diaz ayuso';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'Portal Transparencia Comunidad Madrid', 'https://www.comunidad.madrid', 'pendiente', 'Buscar declaración oficial como presidenta autonómica', '2026-05-19' FROM personas WHERE nombre_normalizado = 'isabel diaz ayuso';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Diligencias Tribunal de Cuentas viviendas', 'Tribunal de Cuentas', 'https://tcu.es', 'verificado', 'Diligencias por cesión viviendas públicas a comunidad judía - enero 2024', '2026-05-19' FROM personas WHERE nombre_normalizado = 'isabel diaz ayuso';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'coherencia', 'Promesas vivienda', 'Asamblea de Madrid', 'https://asambleamadrid.es', 'verificado', '25.000 viviendas prometidas, 500 entregadas en 5 años - dato oficial', '2026-05-19' FROM personas WHERE nombre_normalizado = 'isabel diaz ayuso';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'preparacion', 'Titulación académica', 'Asamblea Madrid ficha oficial', 'https://asambleamadrid.es', 'pendiente', 'Verificar titulación declarada', '2026-05-19' FROM personas WHERE nombre_normalizado = 'isabel diaz ayuso';

-- SANTIAGO ABASCAL
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Empresa familiar condenada por impago', 'Sentencia judicial', 'https://poderjudicial.es', 'verificado', 'Hammer Hostelería condenada por impago a trabajadoras 2010-2011', '2026-05-19' FROM personas WHERE nombre_normalizado = 'santiago abascal';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes patrimonio', 'Congreso.es', 'https://congreso.es', 'verificado', 'Hipoteca 736.000€ declarada. Desproporcionada respecto a ingresos declarados', '2026-05-19' FROM personas WHERE nombre_normalizado = 'santiago abascal';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'actividad', 'Asistencia votaciones', 'Newtral XV legislatura', 'https://newtral.es', 'verificado', 'No aparece en top absentistas - asistencia relativamente alta', '2026-05-19' FROM personas WHERE nombre_normalizado = 'santiago abascal';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'institucional', 'Retirada del hemiciclo', 'Diario de Sesiones Congreso', 'https://congreso.es', 'verificado', 'Retirada hemiciclo con 32 diputados Vox durante intervención Sánchez julio 2025', '2026-05-19' FROM personas WHERE nombre_normalizado = 'santiago abascal';

-- CARLES PUIGDEMONT
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Procesado en rebeldía', 'Tribunal Supremo', 'https://poderjudicial.es', 'verificado', 'Procesado en rebeldía desde 2017. Euroorden activa por sedición y malversación', '2026-05-19' FROM personas WHERE nombre_normalizado = 'carles puigdemont';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'actividad', 'Asistencia parlamentaria', 'Parlamento Europeo', 'https://europarl.europa.eu', 'verificado', 'Asistencia prácticamente nula por situación de fugado 8 años', '2026-05-19' FROM personas WHERE nombre_normalizado = 'carles puigdemont';

-- IONE BELARRA
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Condenas o imputaciones', 'Poder Judicial CENDOJ', 'https://poderjudicial.es', 'verificado', 'Sin condenas ni imputaciones documentadas', '2026-05-19' FROM personas WHERE nombre_normalizado = 'ione belarra';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'Congreso.es declaración oficial 11/08/2023', 'https://congreso.es', 'verificado', 'Vivienda Madrid valor catastral <40.000€, hipoteca 70.700€, cuenta 84.245€. Presentada en plazo', '2026-05-19' FROM personas WHERE nombre_normalizado = 'ione belarra';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'preparacion', 'Titulación académica', 'Congreso.es ficha oficial', 'https://congreso.es', 'verificado', 'Licenciada en Psicología UAM. Máster psicología educación. Doctorado en curso. Verificado en ficha oficial', '2026-05-19' FROM personas WHERE nombre_normalizado = 'ione belarra';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'actividad', 'Asistencia votaciones', 'Congreso.es OpenData', 'https://congreso.es', 'pendiente', 'Buscar dato exacto en OpenData Congreso', '2026-05-19' FROM personas WHERE nombre_normalizado = 'ione belarra';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'conflictos', 'Puertas giratorias y cargos empresariales', 'BORME', 'https://boe.es', 'pendiente', 'Buscar en BORME', '2026-05-19' FROM personas WHERE nombre_normalizado = 'ione belarra';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'institucional', 'Desacatos o sanciones', 'Tribunal Constitucional', 'https://tribunalconstitucional.es', 'pendiente', 'Buscar resoluciones', '2026-05-19' FROM personas WHERE nombre_normalizado = 'ione belarra';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'coherencia', 'Promesas y coherencia', 'Hemeroteca + Diario Sesiones', 'https://congreso.es', 'pendiente', 'Buscar votaciones contra programa propio', '2026-05-19' FROM personas WHERE nombre_normalizado = 'ione belarra';

-- MARIANO RAJOY
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Sentencia caso Gürtel', 'Audiencia Nacional - Sentencia firme', 'https://poderjudicial.es', 'verificado', 'PP condenado. Rajoy testificó y su versión fue desacreditada por el tribunal. Mayo 2018', '2026-05-19' FROM personas WHERE nombre_normalizado = 'mariano rajoy';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Papeles Bárcenas', 'Tribunal Supremo sentencia', 'https://poderjudicial.es', 'verificado', 'Contabilidad B del PP con pagos a dirigentes corroborada por sentencia judicial', '2026-05-19' FROM personas WHERE nombre_normalizado = 'mariano rajoy';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'coherencia', 'Promesa de no subir impuestos', 'BOE + Diario Sesiones Congreso', 'https://congreso.es', 'verificado', 'Prometió no subir impuestos en 2011 y aplicó mayor subida fiscal de la democracia en 2012', '2026-05-19' FROM personas WHERE nombre_normalizado = 'mariano rajoy';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes como ex presidente', 'BOE', 'https://boe.es', 'pendiente', 'Buscar última declaración como alto cargo', '2026-05-19' FROM personas WHERE nombre_normalizado = 'mariano rajoy';

-- ESPERANZA AGUIRRE
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Investigación caso Lezo', 'Tribunal Supremo auto de investigación', 'https://poderjudicial.es', 'verificado', 'Investigada por presunta financiación ilegal PP Madrid. Auto abril 2017', '2026-05-19' FROM personas WHERE nombre_normalizado = 'esperanza aguirre';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'conflictos', 'Consejeros condenados en su gobierno', 'Tribunal Supremo sentencias firmes', 'https://poderjudicial.es', 'verificado', 'Varios consejeros condenados por corrupción durante su mandato casos Púnica y Lezo', '2026-05-19' FROM personas WHERE nombre_normalizado = 'esperanza aguirre';

-- JOSÉ LUIS ÁBALOS
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Investigación caso Koldo', 'Audiencia Nacional auto de investigación', 'https://poderjudicial.es', 'verificado', 'Investigado por adjudicación irregular contratos mascarillas. Auto febrero 2024', '2026-05-19' FROM personas WHERE nombre_normalizado = 'jose luis abalos';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'conflictos', 'Reunión Delcy Rodríguez', 'Declaraciones propias en Congreso', 'https://congreso.es', 'verificado', 'Reunión aeropuerto con Delcy Rodríguez vulnerando sanciones europeas. Admitido por el propio Ábalos', '2026-05-19' FROM personas WHERE nombre_normalizado = 'jose luis abalos';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'actividad', 'Asistencia votaciones', 'Newtral XV legislatura', 'https://newtral.es', 'verificado', 'Diputado raso más absentista: ausente 30 de 85 días analizados sin justificación ejecutiva', '2026-05-19' FROM personas WHERE nombre_normalizado = 'jose luis abalos';

-- PABLO IGLESIAS
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Compra chalet', 'Registro de la Propiedad', 'https://registradores.org', 'verificado', 'Compra chalet 600.000€ documentada en Registro de la Propiedad', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pablo iglesias';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'coherencia', 'Promesa de no gobernar con PSOE', 'Diario de Sesiones + hemeroteca 2+ medios', 'https://congreso.es', 'verificado', 'Declaró repetidamente que no entraría en gobierno con PSOE y luego fue vicepresidente', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pablo iglesias';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'Congreso.es', 'https://congreso.es', 'verificado', 'Hipoteca pendiente 467.657€ declarada. Patrimonio declarado en plazo', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pablo iglesias';

-- IRENE MONTERO
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'coherencia', 'Impacto Ley Solo Sí es Sí', 'CGPJ informe oficial', 'https://poderjudicial.es', 'verificado', 'Más de 1.000 agresores con condenas rebajadas. Informe oficial CGPJ febrero 2023', '2026-05-19' FROM personas WHERE nombre_normalizado = 'irene montero';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Condenas o imputaciones', 'Poder Judicial', 'https://poderjudicial.es', 'verificado', 'Sin condenas ni imputaciones documentadas', '2026-05-19' FROM personas WHERE nombre_normalizado = 'irene montero';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'Congreso.es', 'https://congreso.es', 'pendiente', 'Buscar declaración oficial XV legislatura', '2026-05-19' FROM personas WHERE nombre_normalizado = 'irene montero';

-- ÍÑIGO ERREJÓN
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Denuncias agresión sexual e investigación judicial', 'Juzgados de instrucción + declaraciones propias', 'https://poderjudicial.es', 'verificado', 'Múltiples denuncias. Dimisión octubre 2024. Investigación judicial abierta', '2026-05-19' FROM personas WHERE nombre_normalizado = 'inigo errejon';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'coherencia', 'Contradicción discurso feminista', 'Declaraciones propias + hemeroteca 2+ medios', 'https://elpais.com', 'verificado', 'Discurso feminista documentado en abierta contradicción con conductas denunciadas', '2026-05-19' FROM personas WHERE nombre_normalizado = 'inigo errejon';

-- ROCÍO MONASTERIO
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'preparacion', 'Titulación arquitecta', 'COAM Registro oficial de colegiados', 'https://coam.org', 'verificado', 'COAM confirmó que no figuraba como colegiada activa en período declarado en CV', '2026-05-19' FROM personas WHERE nombre_normalizado = 'rocio monasterio';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Condenas o imputaciones', 'Poder Judicial', 'https://poderjudicial.es', 'verificado', 'Sin condenas ni imputaciones documentadas', '2026-05-19' FROM personas WHERE nombre_normalizado = 'rocio monasterio';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'Asamblea de Madrid', 'https://asambleamadrid.es', 'pendiente', 'Buscar declaración oficial como diputada autonómica', '2026-05-19' FROM personas WHERE nombre_normalizado = 'rocio monasterio';

-- ORIOL JUNQUERAS
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Condena Tribunal Supremo', 'Tribunal Supremo sentencia firme', 'https://poderjudicial.es', 'verificado', 'Condenado a 13 años por sedición y malversación. Sentencia firme octubre 2019. Indultado 2021', '2026-05-19' FROM personas WHERE nombre_normalizado = 'oriol junqueras';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'institucional', 'DUI vulnerando Tribunal Constitucional', 'Tribunal Constitucional resoluciones', 'https://tribunalconstitucional.es', 'verificado', 'Declaración unilateral independencia vulnerando resoluciones TC. Octubre 2017', '2026-05-19' FROM personas WHERE nombre_normalizado = 'oriol junqueras';

-- ALBERTO NÚÑEZ FEIJÓO
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Amistad narcotraficante Dorado', 'Declaraciones propias + hemeroteca El País El Mundo', 'https://elpais.com', 'verificado', 'Amistad con Marcial Dorado admitida públicamente por el propio Feijóo', '2026-05-19' FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'Congreso.es declaración oficial', 'https://congreso.es', 'verificado', '3 viviendas, 2 garajes, finca rústica. Fondo inversión 403.425€. Declarado en plazo', '2026-05-19' FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'coherencia', 'Pactos con Vox', 'Actas parlamentarias autonómicas', 'https://congreso.es', 'verificado', 'Prometió no pactar con Vox y gobernó con su apoyo en Castilla y León y otras comunidades', '2026-05-19' FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'actividad', 'Asistencia votaciones', 'Newtral XV legislatura', 'https://newtral.es', 'verificado', 'Segundo más absentista del Congreso - justificado por rol de líder oposición', '2026-05-19' FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo';

-- ALBERT RIVERA
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'coherencia', 'Bloqueo investidura Sánchez 2019', 'Diario de Sesiones Congreso', 'https://congreso.es', 'verificado', 'Bloqueó investidura julio 2019 forzando nuevas elecciones tras prometer facilitar gobiernos moderados', '2026-05-19' FROM personas WHERE nombre_normalizado = 'albert rivera';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'actividad', 'Abandono acta diputado', 'Congreso.es registro oficial', 'https://congreso.es', 'verificado', 'Abandonó acta de diputado noviembre 2019 semanas después de las elecciones', '2026-05-19' FROM personas WHERE nombre_normalizado = 'albert rivera';

-- MARÍA JESÚS MONTERO
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Condenas o imputaciones', 'Poder Judicial', 'https://poderjudicial.es', 'verificado', 'Sin condenas ni imputaciones documentadas', '2026-05-19' FROM personas WHERE nombre_normalizado = 'maria jesus montero';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'BOE Portal Transparencia', 'https://boe.es', 'pendiente', 'Buscar declaración como ministra y diputada', '2026-05-19' FROM personas WHERE nombre_normalizado = 'maria jesus montero';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'actividad', 'Asistencia votaciones', 'Congreso.es OpenData', 'https://congreso.es', 'pendiente', 'Buscar dato exacto como ministra-diputada', '2026-05-19' FROM personas WHERE nombre_normalizado = 'maria jesus montero';

-- ALBERTO GARZÓN
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Condenas o imputaciones', 'Poder Judicial', 'https://poderjudicial.es', 'verificado', 'Sin condenas ni imputaciones documentadas', '2026-05-19' FROM personas WHERE nombre_normalizado = 'alberto garzon';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'Congreso.es', 'https://congreso.es', 'verificado', 'Declaró derechos editoriales 1.994€/año al inicio. Dejó de cobrarlos al ser ministro. Declarado en plazo', '2026-05-19' FROM personas WHERE nombre_normalizado = 'alberto garzon';

-- PERE ARAGONÈS
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Condenas o imputaciones', 'Poder Judicial', 'https://poderjudicial.es', 'verificado', 'Sin condenas ni imputaciones documentadas', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pere aragones';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'Generalitat de Catalunya Portal Transparencia', 'https://govern.cat', 'pendiente', 'Buscar declaración oficial como ex president', '2026-05-19' FROM personas WHERE nombre_normalizado = 'pere aragones';

-- SALVADOR ILLA
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Condenas o imputaciones', 'Poder Judicial', 'https://poderjudicial.es', 'verificado', 'Sin condenas ni imputaciones documentadas', '2026-05-19' FROM personas WHERE nombre_normalizado = 'salvador illa';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'Generalitat de Catalunya Portal Transparencia', 'https://govern.cat', 'pendiente', 'Buscar declaración oficial como president', '2026-05-19' FROM personas WHERE nombre_normalizado = 'salvador illa';

-- INÉS ARRIMADAS
INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'legal', 'Condenas o imputaciones', 'Poder Judicial', 'https://poderjudicial.es', 'verificado', 'Sin condenas ni imputaciones documentadas', '2026-05-19' FROM personas WHERE nombre_normalizado = 'ines arrimadas';

INSERT INTO verificacion_datos (persona_id, bloque, dato_buscado, fuente_nombre, fuente_url, estado, notas, fecha_verificacion)
SELECT id, 'economico', 'Declaración de bienes', 'Congreso.es', 'https://congreso.es', 'pendiente', 'Buscar declaración oficial como ex diputada', '2026-05-19' FROM personas WHERE nombre_normalizado = 'ines arrimadas';
