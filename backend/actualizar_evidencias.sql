-- Añadir campos de verificación a la tabla evidencias existente
ALTER TABLE evidencias 
ADD COLUMN IF NOT EXISTS tipo_fuente text 
  CHECK (tipo_fuente IN ('oficial_primaria', 'oficial_secundaria', 'no_oficial_doble', 'pendiente'))
  DEFAULT 'pendiente',

ADD COLUMN IF NOT EXISTS fuente_2_nombre text,
ADD COLUMN IF NOT EXISTS fuente_2_url text,

ADD COLUMN IF NOT EXISTS estado_verificacion text 
  CHECK (estado_verificacion IN ('verificado', 'pendiente', 'bloqueado'))
  DEFAULT 'pendiente';

-- Actualizar las evidencias ya existentes con su tipo de fuente correcto

-- YOLANDA DÍAZ
UPDATE evidencias SET 
  tipo_fuente = 'oficial_secundaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%jornada laboral%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_secundaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%SMI incrementado%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Sin condenas ni imputaciones%' AND fuente_nombre LIKE '%Tribunal Supremo%';

-- PEDRO SÁNCHEZ
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Air Europa%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%4.090 millones%';

UPDATE evidencias SET 
  tipo_fuente = 'no_oficial_doble',
  fuente_2_nombre = 'El Mundo',
  fuente_2_url = 'https://elmundo.es',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%10% de 50 compromisos%';

UPDATE evidencias SET 
  tipo_fuente = 'no_oficial_doble',
  fuente_2_nombre = 'El Mundo',
  fuente_2_url = 'https://elmundo.es',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%independencia judicial%';

-- ISABEL DÍAZ AYUSO
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%354.000%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_secundaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%25.000 prometidas%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%cesión viviendas%';

-- SANTIAGO ABASCAL
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Hammer Hostelería%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Hipoteca 736%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%hemiciclo%';

-- CARLES PUIGDEMONT
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%rebeldía%' AND fuente_nombre LIKE '%Tribunal Supremo%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Asistencia parlamentaria%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Euroorden%';

-- MARIANO RAJOY
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Gürtel%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Bárcenas%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%subida fiscal%';

-- ESPERANZA AGUIRRE
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Lezo%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%consejeros%' AND fuente_nombre LIKE '%Tribunal Supremo%';

-- JOSÉ LUIS ÁBALOS
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Koldo%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Delcy%';

-- PABLO IGLESIAS
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%chalet%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  fuente_2_nombre = 'El Mundo',
  fuente_2_url = 'https://elmundo.es',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%no entraría en gobierno%';

-- IRENE MONTERO
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Solo Sí es Sí%';

-- ÍÑIGO ERREJÓN
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%agresión sexual%';

UPDATE evidencias SET 
  tipo_fuente = 'no_oficial_doble',
  fuente_2_nombre = 'El Mundo',
  fuente_2_url = 'https://elmundo.es',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%feminista%';

-- ROCÍO MONASTERIO
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%COAM%' OR descripcion LIKE '%colegiada%';

-- ORIOL JUNQUERAS
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%13 años%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Declaración unilateral%';

-- ALBERTO NÚÑEZ FEIJÓO
UPDATE evidencias SET 
  tipo_fuente = 'no_oficial_doble',
  fuente_2_nombre = 'El Mundo',
  fuente_2_url = 'https://elmundo.es',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%Marcial Dorado%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%no pactar con Vox%';

-- ALBERT RIVERA
UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%investidura%' AND fuente_nombre LIKE '%Congreso%';

UPDATE evidencias SET 
  tipo_fuente = 'oficial_primaria',
  estado_verificacion = 'verificado'
WHERE descripcion LIKE '%acta de diputado%';
