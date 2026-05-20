-- CORREGIR URLs DE FUENTES NO-CONGRESO
-- Usar buscadores estables con descripción clara de qué buscar

-- BOE - Declaraciones de bienes de ministros y altos cargos
-- La página de Función Pública lista todas las resoluciones anuales con sus PDFs
UPDATE evidencias SET
  fuente_url = 'https://funcionpublica.digital.gob.es/etica/declaracion_bienes.html',
  fuente_nombre = 'Función Pública - Declaraciones bienes altos cargos (PDF por año)'
WHERE fuente_url LIKE '%boe.es/buscar/doc.php?id=BOE-A-2024-6410%'
   OR fuente_url LIKE '%boe.es/buscar/doc.php?id=BOE-A-2021-4898%'
   OR fuente_url LIKE '%boe.es/buscar/doc.php?id=BOE-A-2026-7339%';

-- Portal de Transparencia AGE - declaraciones de bienes
UPDATE evidencias SET
  fuente_url = 'https://transparencia.gob.es/publicidad-activa/por-materias/altos-cargos/declaraciones-bienes-derechos',
  fuente_nombre = 'Portal Transparencia AGE - Declaraciones bienes altos cargos'
WHERE fuente_url LIKE '%transparencia.gob.es%'
  AND (fuente_nombre LIKE '%declaraci%' OR fuente_nombre LIKE '%bienes%' OR fuente_nombre LIKE '%patrimoni%');

-- Generalitat de Catalunya - Portal de Transparència
UPDATE evidencias SET
  fuente_url = 'https://transparencia.gencat.cat/ca/inici/',
  fuente_nombre = 'Generalitat Catalunya - Portal de Transparència'
WHERE fuente_url LIKE '%transparencia.gencat%' OR fuente_url LIKE '%gencat.cat%';

-- DOGC - buscador
UPDATE evidencias SET
  fuente_url = 'https://dogc.gencat.cat/ca/pdogc_canals_interns/pdogc_buscador/',
  fuente_nombre = 'DOGC - Diari Oficial Generalitat de Catalunya (buscador)'
WHERE fuente_url LIKE '%dogc.gencat%';

-- Tribunal de Cuentas - página de informes
UPDATE evidencias SET
  fuente_url = 'https://www.tcu.es/tribunal-de-cuentas/es/sala-de-prensa/noticias/',
  fuente_nombre = 'Tribunal de Cuentas - Sala de prensa e informes'
WHERE fuente_url LIKE '%tcu.es%';

-- CENDOJ - buscador de jurisprudencia
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/search/indexAN.jsp',
  fuente_nombre = 'CENDOJ - Buscador jurisprudencia Poder Judicial'
WHERE fuente_url LIKE '%poderjudicial.es/cgpj%'
  AND (fuente_nombre LIKE '%CENDOJ%' OR fuente_nombre LIKE '%sentencia%' OR fuente_nombre LIKE '%Auto%' OR fuente_nombre LIKE '%Tribunal Supremo%' OR fuente_nombre LIKE '%Audiencia Nacional%' OR fuente_nombre LIKE '%TSJ%');

-- Registro de la Propiedad
UPDATE evidencias SET
  fuente_url = 'https://www.registradores.org/actualidad/portal-estadistico-registral',
  fuente_nombre = 'Colegio Registradores - Portal estadístico registral'
WHERE fuente_url LIKE '%registradores.org%';

-- COAM - buscador de colegiados
UPDATE evidencias SET
  fuente_url = 'https://www.coam.org/es/colegio/encuentra-un-arquitecto',
  fuente_nombre = 'COAM - Buscador oficial arquitectos colegiados Madrid'
WHERE fuente_url LIKE '%coam.org%';

-- Newtral - análisis absentismo
UPDATE evidencias SET
  fuente_url = 'https://www.newtral.es/especiales/congreso/'
WHERE fuente_url LIKE '%newtral.es/ausencias%';

-- Maldita - verificaciones
UPDATE evidencias SET
  fuente_url = 'https://maldita.es/malditateexplica/20230127/declaracion-bienes-yolanda-diaz-nadia-calvino-teresa-ribera-altos-cargos/',
  fuente_nombre = 'Maldita.es - Verificación declaración bienes Yolanda Díaz 2023'
WHERE fuente_url LIKE '%maldita.es%' AND descripcion LIKE '%2019-2023%';

-- Tribunal Constitucional - buscador jurisprudencia
UPDATE evidencias SET
  fuente_url = 'https://www.tribunalconstitucional.es/es/jurisprudencia/Paginas/Buscador.aspx',
  fuente_nombre = 'Tribunal Constitucional - Buscador jurisprudencia'
WHERE fuente_url LIKE '%tribunalconstitucional.es%';

-- Parlament de Catalunya - buscador
UPDATE evidencias SET
  fuente_url = 'https://www.parlament.cat/web/activitat-parlamentaria/siapp/index.html',
  fuente_nombre = 'Parlament de Catalunya - Sistema d''Informació de l''Activitat Parlamentària'
WHERE fuente_url LIKE '%parlament.cat%' AND fuente_nombre NOT LIKE '%Ficha%';
