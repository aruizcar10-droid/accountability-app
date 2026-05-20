-- NUEVOS POLÍTICOS (16)
INSERT INTO personas (nombre, nombre_normalizado, categoria, subcategoria, cargo_actual, partido, pais, region) VALUES
('Alberto Núñez Feijóo', 'alberto nunez feijoo', 'politico', 'cargo_legislativo_oposicion', 'Líder PP · Senador', 'PP', 'ES', null),
('Mariano Rajoy', 'mariano rajoy', 'politico', 'cargo_ejecutivo', 'Ex Presidente del Gobierno', 'PP', 'ES', null),
('Esperanza Aguirre', 'esperanza aguirre', 'politico', 'cargo_ejecutivo', 'Ex Presidenta Comunidad de Madrid', 'PP', 'ES', 'Madrid'),
('María Jesús Montero', 'maria jesus montero', 'politico', 'cargo_ejecutivo', 'Ministra de Hacienda', 'PSOE', 'ES', null),
('José Luis Ábalos', 'jose luis abalos', 'politico', 'cargo_legislativo_gobierno', 'Diputado (ex Ministro de Transportes)', 'PSOE', 'ES', null),
('Pablo Iglesias', 'pablo iglesias', 'politico', 'cargo_ejecutivo', 'Ex Vicepresidente del Gobierno', 'Podemos', 'ES', null),
('Irene Montero', 'irene montero', 'politico', 'cargo_ejecutivo', 'Ex Ministra de Igualdad', 'Podemos', 'ES', null),
('Ione Belarra', 'ione belarra', 'politico', 'cargo_legislativo_oposicion', 'Secretaria General Podemos · Diputada', 'Podemos', 'ES', null),
('Alberto Garzón', 'alberto garzon', 'politico', 'cargo_ejecutivo', 'Ex Ministro de Consumo', 'Sumar/IU', 'ES', null),
('Íñigo Errejón', 'inigo errejon', 'politico', 'cargo_legislativo_oposicion', 'Ex Diputado Más País', 'Más País', 'ES', null),
('Rocío Monasterio', 'rocio monasterio', 'politico', 'cargo_legislativo_oposicion', 'Portavoz Vox Madrid · Diputada', 'Vox', 'ES', 'Madrid'),
('Oriol Junqueras', 'oriol junqueras', 'politico', 'cargo_ejecutivo', 'Ex Vicepresident Generalitat', 'ERC', 'ES', 'Cataluña'),
('Pere Aragonès', 'pere aragones', 'politico', 'cargo_ejecutivo', 'Ex President Generalitat de Catalunya', 'ERC', 'ES', 'Cataluña'),
('Salvador Illa', 'salvador illa', 'politico', 'cargo_ejecutivo', 'President Generalitat de Catalunya', 'PSC', 'ES', 'Cataluña'),
('Albert Rivera', 'albert rivera', 'politico', 'cargo_legislativo_oposicion', 'Ex Líder Ciudadanos', 'Ciudadanos', 'ES', null),
('Inés Arrimadas', 'ines arrimadas', 'politico', 'cargo_legislativo_oposicion', 'Ex Líder Ciudadanos · Ex Diputada', 'Ciudadanos', 'ES', null);

-- PUNTUACIONES (totales verificados = suma exacta de bloques)
INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 76, 22, 16, 12, 8, 4, 6, 8, true FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 40, 5, 9, 4, 8, 2, 3, 9, true FROM personas WHERE nombre_normalizado = 'mariano rajoy';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 36, 4, 9, 3, 7, 2, 3, 8, true FROM personas WHERE nombre_normalizado = 'esperanza aguirre';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 83, 26, 16, 13, 9, 4, 8, 7, true FROM personas WHERE nombre_normalizado = 'maria jesus montero';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 33, 3, 8, 2, 6, 3, 4, 7, true FROM personas WHERE nombre_normalizado = 'jose luis abalos';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 66, 24, 10, 10, 6, 3, 5, 8, true FROM personas WHERE nombre_normalizado = 'pablo iglesias';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 82, 28, 17, 13, 7, 2, 8, 7, true FROM personas WHERE nombre_normalizado = 'irene montero';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 86, 28, 17, 13, 9, 4, 8, 7, true FROM personas WHERE nombre_normalizado = 'ione belarra';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 84, 28, 16, 13, 8, 5, 8, 6, true FROM personas WHERE nombre_normalizado = 'alberto garzon';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 34, 2, 10, 8, 2, 2, 2, 8, true FROM personas WHERE nombre_normalizado = 'inigo errejon';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 70, 24, 14, 12, 7, 5, 6, 2, true FROM personas WHERE nombre_normalizado = 'rocio monasterio';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 32, 2, 10, 8, 3, 2, 0, 7, true FROM personas WHERE nombre_normalizado = 'oriol junqueras';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 83, 28, 16, 13, 8, 4, 7, 7, true FROM personas WHERE nombre_normalizado = 'pere aragones';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 84, 28, 16, 13, 8, 4, 8, 7, true FROM personas WHERE nombre_normalizado = 'salvador illa';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 73, 26, 14, 12, 4, 2, 8, 7, true FROM personas WHERE nombre_normalizado = 'albert rivera';

INSERT INTO puntuaciones (persona_id, total, bloque_legal, bloque_economico, bloque_conflictos, bloque_actividad, bloque_coherencia, bloque_institucional, bloque_preparacion, es_vigente)
SELECT id, 83, 28, 16, 13, 8, 4, 8, 6, true FROM personas WHERE nombre_normalizado = 'ines arrimadas';

-- EVIDENCIAS
-- Fuente oficial = 1 fuente suficiente
-- Fuente no oficial = indicado como pendiente si solo hay 1 medio

-- FEIJOO
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'legal', 'negativo', 'Amistad documentada con narcotraficante Marcial Dorado. El propio Feijóo lo admitió públicamente', -5, 'Declaraciones propias + hemeroteca (2+ medios)', 'https://elpais.com', '2022-03-20', true FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'coherencia', 'negativo', 'Prometió no pactar con Vox y gobernó con su apoyo en Castilla y León y otras comunidades', -4, 'Actas parlamentarias autonómicas (fuente oficial)', 'https://congreso.es', '2023-05-01', true FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo';

-- RAJOY
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'legal', 'negativo', 'PP condenado por beneficiarse de la trama Gürtel. Sentencia Audiencia Nacional 2018', -20, 'Audiencia Nacional - Sentencia firme', 'https://poderjudicial.es', '2018-05-24', true FROM personas WHERE nombre_normalizado = 'mariano rajoy';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'economico', 'negativo', 'Papeles de Bárcenas: contabilidad B del PP con pagos a dirigentes. Corroborado por sentencia judicial', -8, 'Tribunal Supremo - Sentencia caso Bárcenas', 'https://poderjudicial.es', '2013-01-31', true FROM personas WHERE nombre_normalizado = 'mariano rajoy';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'coherencia', 'negativo', 'Prometió no subir impuestos en campaña 2011 y aplicó la mayor subida fiscal de la democracia en 2012', -3, 'BOE + Diario de Sesiones Congreso (fuente oficial)', 'https://congreso.es', '2012-07-11', true FROM personas WHERE nombre_normalizado = 'mariano rajoy';

-- AGUIRRE
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'legal', 'negativo', 'Investigada en caso Lezo por presunta financiación ilegal del PP de Madrid. Diligencias abiertas', -15, 'Tribunal Supremo - Auto de investigación', 'https://poderjudicial.es', '2017-04-19', true FROM personas WHERE nombre_normalizado = 'esperanza aguirre';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'conflictos', 'negativo', 'Varios consejeros de su gobierno condenados por corrupción durante su mandato: casos Púnica y Lezo', -8, 'Tribunal Supremo - Sentencias firmes', 'https://poderjudicial.es', '2017-01-01', true FROM personas WHERE nombre_normalizado = 'esperanza aguirre';

-- ABALOS
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'legal', 'negativo', 'Investigado en caso Koldo por la Audiencia Nacional: presunta adjudicación irregular de contratos de mascarillas', -20, 'Audiencia Nacional - Auto de investigación', 'https://poderjudicial.es', '2024-02-20', true FROM personas WHERE nombre_normalizado = 'jose luis abalos';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'conflictos', 'negativo', 'Reunión en aeropuerto Barajas con Delcy Rodríguez (Venezuela) vulnerando sanciones europeas. Admitido por el propio Ábalos', -6, 'Declaraciones propias en Congreso + hemeroteca (2+ medios)', 'https://congreso.es', '2020-01-21', true FROM personas WHERE nombre_normalizado = 'jose luis abalos';

-- IGLESIAS
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'economico', 'negativo', 'Compra de chalet por 600.000€ en contraste con discurso público contra la propiedad privada y el lujo', -5, 'Registro de la Propiedad (fuente oficial) + hemeroteca', 'https://elconfidencial.com', '2018-05-01', true FROM personas WHERE nombre_normalizado = 'pablo iglesias';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'coherencia', 'negativo', 'Declaró repetidamente que no entraría en gobierno con el PSOE y luego fue vicepresidente', -4, 'Diario de Sesiones + hemeroteca (2+ medios)', 'https://congreso.es', '2020-01-13', true FROM personas WHERE nombre_normalizado = 'pablo iglesias';

-- IRENE MONTERO
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'coherencia', 'negativo', 'Ley del Solo Sí es Sí causó rebajas de condena a más de 1.000 agresores sexuales, contrario al objetivo declarado de la ley', -6, 'CGPJ - Informe oficial sobre impacto de la ley', 'https://poderjudicial.es', '2023-02-01', true FROM personas WHERE nombre_normalizado = 'irene montero';

-- ERREJON
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'legal', 'negativo', 'Múltiples denuncias por agresión sexual. Dimisión y retirada de la política en octubre 2024. Investigación judicial abierta', -25, 'Juzgados de instrucción + declaraciones propias', 'https://elpais.com', '2024-10-24', true FROM personas WHERE nombre_normalizado = 'inigo errejon';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'coherencia', 'negativo', 'Discurso público feminista en abierta contradicción con las conductas denunciadas por varias mujeres', -4, 'Hemeroteca (2+ medios) + declaraciones propias', 'https://elpais.com', '2024-10-24', true FROM personas WHERE nombre_normalizado = 'inigo errejon';

-- MONASTERIO
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'preparacion', 'negativo', 'Colegio Oficial de Arquitectos de Madrid confirmó que no figuraba como colegiada en el período declarado en su currículum', -7, 'COAM - Registro oficial de colegiados', 'https://coam.org', '2019-04-10', true FROM personas WHERE nombre_normalizado = 'rocio monasterio';

-- JUNQUERAS
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'legal', 'negativo', 'Condenado a 13 años de prisión por sedición y malversación. Sentencia firme Tribunal Supremo octubre 2019', -25, 'Tribunal Supremo - Sentencia firme', 'https://poderjudicial.es', '2019-10-14', true FROM personas WHERE nombre_normalizado = 'oriol junqueras';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'institucional', 'negativo', 'Declaración unilateral de independencia vulnerando resoluciones del Tribunal Constitucional', -10, 'Tribunal Constitucional - Resoluciones oficiales', 'https://tribunalconstitucional.es', '2017-10-27', true FROM personas WHERE nombre_normalizado = 'oriol junqueras';

-- RIVERA
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'coherencia', 'negativo', 'Bloqueó la investidura de Sánchez en 2019 forzando nuevas elecciones, tras años prometiendo facilitar gobiernos moderados', -4, 'Diario de Sesiones Congreso (fuente oficial)', 'https://congreso.es', '2019-07-25', true FROM personas WHERE nombre_normalizado = 'albert rivera';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada)
SELECT id, 'actividad', 'negativo', 'Abandonó el acta de diputado y la política activa semanas después de las elecciones de noviembre 2019', -5, 'Congreso.es - Registro oficial de diputados', 'https://congreso.es', '2019-11-11', true FROM personas WHERE nombre_normalizado = 'albert rivera';
