-- Añadir campo fecha_dato a evidencias
-- Es la fecha en que el dato fue publicado en la fuente oficial
ALTER TABLE evidencias 
ADD COLUMN IF NOT EXISTS fecha_dato date;

-- Actualizar las evidencias existentes con sus fechas reales de publicación

-- YOLANDA DÍAZ
UPDATE evidencias SET fecha_dato = '2024-03-25' WHERE descripcion LIKE '%90.491%';
UPDATE evidencias SET fecha_dato = '2023-01-27' WHERE descripcion LIKE '%no publicada 2019-2023%';
UPDATE evidencias SET fecha_dato = '2024-12-20' WHERE descripcion LIKE '%jornada laboral%';
UPDATE evidencias SET fecha_dato = '2018-01-01' WHERE descripcion LIKE '%SMI incrementado%';
UPDATE evidencias SET fecha_dato = '2021-06-18' WHERE descripcion LIKE '%másteres rebajados%';

-- PEDRO SÁNCHEZ
UPDATE evidencias SET fecha_dato = '2024-01-01' WHERE descripcion LIKE '%Air Europa%';
UPDATE evidencias SET fecha_dato = '2026-05-06' WHERE descripcion LIKE '%4.090 millones%';
UPDATE evidencias SET fecha_dato = '2024-05-20' WHERE descripcion LIKE '%10% de 50 compromisos%';
UPDATE evidencias SET fecha_dato = '2025-07-09' WHERE descripcion LIKE '%independencia judicial%';

-- ISABEL DÍAZ AYUSO
UPDATE evidencias SET fecha_dato = '2024-06-01' WHERE descripcion LIKE '%354.000%';
UPDATE evidencias SET fecha_dato = '2024-01-22' WHERE descripcion LIKE '%cesión viviendas%';
UPDATE evidencias SET fecha_dato = '2024-10-01' WHERE descripcion LIKE '%25.000 prometidas%';

-- SANTIAGO ABASCAL
UPDATE evidencias SET fecha_dato = '2011-01-20' WHERE descripcion LIKE '%Hammer Hostelería%';
UPDATE evidencias SET fecha_dato = '2023-08-01' WHERE descripcion LIKE '%736.000%';
UPDATE evidencias SET fecha_dato = '2025-07-09' WHERE descripcion LIKE '%hemiciclo%';

-- CARLES PUIGDEMONT
UPDATE evidencias SET fecha_dato = '2017-11-01' WHERE descripcion LIKE '%rebeldía%' AND fuente_nombre LIKE '%Tribunal Supremo%';
UPDATE evidencias SET fecha_dato = '2017-10-27' WHERE descripcion LIKE '%Declaración unilateral%';
UPDATE evidencias SET fecha_dato = '2024-01-01' WHERE descripcion LIKE '%Asistencia parlamentaria%';

-- MARIANO RAJOY
UPDATE evidencias SET fecha_dato = '2018-05-24' WHERE descripcion LIKE '%Gürtel%';
UPDATE evidencias SET fecha_dato = '2013-01-31' WHERE descripcion LIKE '%Bárcenas%';
UPDATE evidencias SET fecha_dato = '2012-07-11' WHERE descripcion LIKE '%subida fiscal%';
UPDATE evidencias SET fecha_dato = '2018-05-24' WHERE descripcion LIKE '%testificó%';

-- ESPERANZA AGUIRRE
UPDATE evidencias SET fecha_dato = '2017-04-19' WHERE descripcion LIKE '%Lezo%';
UPDATE evidencias SET fecha_dato = '2017-01-01' WHERE descripcion LIKE '%consejeros%' AND fuente_nombre LIKE '%Tribunal Supremo%';

-- ÁBALOS
UPDATE evidencias SET fecha_dato = '2024-02-20' WHERE descripcion LIKE '%Koldo%';
UPDATE evidencias SET fecha_dato = '2020-01-21' WHERE descripcion LIKE '%Delcy%';
UPDATE evidencias SET fecha_dato = '2024-01-01' WHERE descripcion LIKE '%absentista%';

-- PABLO IGLESIAS
UPDATE evidencias SET fecha_dato = '2018-05-01' WHERE descripcion LIKE '%chalet%';
UPDATE evidencias SET fecha_dato = '2020-01-13' WHERE descripcion LIKE '%no entraría en gobierno%';

-- IRENE MONTERO
UPDATE evidencias SET fecha_dato = '2023-02-01' WHERE descripcion LIKE '%Solo Sí es Sí%';
UPDATE evidencias SET fecha_dato = '2021-03-26' WHERE descripcion LIKE '%629.969%';
UPDATE evidencias SET fecha_dato = '2023-09-01' WHERE descripcion LIKE '%fin de legislatura%';

-- ERREJÓN
UPDATE evidencias SET fecha_dato = '2024-10-24' WHERE descripcion LIKE '%agresión sexual%';
UPDATE evidencias SET fecha_dato = '2024-10-24' WHERE descripcion LIKE '%feminista%';

-- MONASTERIO
UPDATE evidencias SET fecha_dato = '2019-04-10' WHERE descripcion LIKE '%COAM%' OR descripcion LIKE '%colegiada%';

-- JUNQUERAS
UPDATE evidencias SET fecha_dato = '2019-10-14' WHERE descripcion LIKE '%13 años%';
UPDATE evidencias SET fecha_dato = '2017-10-27' WHERE descripcion LIKE '%unilateral de independencia%';

-- RIVERA
UPDATE evidencias SET fecha_dato = '2019-07-25' WHERE descripcion LIKE '%investidura%' AND fuente_nombre LIKE '%Congreso%';
UPDATE evidencias SET fecha_dato = '2019-11-11' WHERE descripcion LIKE '%acta de diputado%';

-- FEIJÓO
UPDATE evidencias SET fecha_dato = '2022-03-20' WHERE descripcion LIKE '%Marcial Dorado%';
UPDATE evidencias SET fecha_dato = '2023-05-01' WHERE descripcion LIKE '%no pactar con Vox%';
