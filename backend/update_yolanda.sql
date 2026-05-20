-- YOLANDA DÍAZ - evidencias actualizadas con datos reales verificados

-- PREPARACIÓN: datos reales verificados
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Licenciada en Derecho por la Universidad de Santiago de Compostela. Colegiada nº748 en el Ilustre Colegio de Abogados de Ferrol desde 1998. Titulación verificada', 0, 'La Moncloa - Currículum oficial + ICAF', 'https://www.lamoncloa.gob.es/gobierno/paginas/biografias-xv-legislatura/ministra-yolanda-diaz.aspx', '2021-01-01', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'negativo', 'La Moncloa eliminó en 2021 tres másteres de su currículum oficial, rebajándolos a "cursos superiores y de postgrado". Los másteres no estaban verificados', -1, 'COPE + Maldita.es (2 fuentes independientes)', 'https://maldita.es', '2021-06-18', true, 'no_oficial_doble', 'verificado'
FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'preparacion', 'positivo', 'Ministra de Trabajo con carrera jurídica relevante para el cargo. Especialización en derecho laboral y relaciones laborales directamente aplicada al ministerio', 0, 'La Moncloa - Currículum oficial', 'https://www.lamoncloa.gob.es/gobierno/paginas/biografias-xv-legislatura/ministra-yolanda-diaz.aspx', '2020-01-13', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'yolanda diaz';

-- ECONÓMICO: dato negativo verificado - declaración no publicada 2019-2023
INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'economico', 'negativo', 'Declaración de bienes no publicada en Portal de Transparencia entre 2019 y 2023 al cambiar de vicepresidencia. Controvertido: el gobierno lo justificó pero expertos discreparon', -1, 'Maldita.es verificación + Portal Transparencia AGE', 'https://maldita.es/malditateexplica/20230127/declaracion-bienes-yolanda-diaz-nadia-calvino-teresa-ribera-altos-cargos/', '2023-01-27', true, 'no_oficial_doble', 'verificado'
FROM personas WHERE nombre_normalizado = 'yolanda diaz';

INSERT INTO evidencias (persona_id, bloque, tipo, descripcion, impacto, fuente_nombre, fuente_url, fecha_evidencia, verificada, tipo_fuente, estado_verificacion)
SELECT id, 'economico', 'positivo', 'Patrimonio total declarado en 2023: 90.491€. Modesto para el cargo. Publicado en BOE y Portal de Transparencia AGE', 0, 'BOE - Resolución 25 marzo 2024 + El Español', 'https://transparencia.gob.es/transparencia/transparencia_Home/index/PublicidadActiva/AltosCargos/declaraciones-bienes-derechos.html', '2024-03-25', true, 'oficial_primaria', 'verificado'
FROM personas WHERE nombre_normalizado = 'yolanda diaz';
