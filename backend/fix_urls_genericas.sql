-- Corregir URLs genéricas identificadas en el CSV

-- 1. congreso.es sin www
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados'
WHERE fuente_url = 'https://congreso.es';

-- 2. govern.cat genérica → Portal Transparència Generalitat
UPDATE evidencias SET
  fuente_url = 'https://transparencia.gencat.cat/ca/inici/',
  fuente_nombre = 'Generalitat Catalunya - Portal de Transparència'
WHERE fuente_url = 'https://govern.cat';

-- 3. poderjudicial.es genérica → CENDOJ buscador
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/search/indexAN.jsp',
  fuente_nombre = 'CENDOJ - Buscador jurisprudencia Poder Judicial'
WHERE fuente_url = 'https://poderjudicial.es';

-- 4. transparencia.gob.es genérica → página declaraciones bienes
UPDATE evidencias SET
  fuente_url = 'https://transparencia.gob.es/publicidad-activa/por-materias/altos-cargos/declaraciones-bienes-derechos',
  fuente_nombre = 'Portal Transparencia AGE - Declaraciones bienes altos cargos'
WHERE fuente_url = 'https://transparencia.gob.es';

-- 5. eldiario.es genérica → buscador
UPDATE evidencias SET
  fuente_url = 'https://www.eldiario.es/buscador/?q=independencia+judicial+sanchez',
  fuente_nombre = 'El Diario - Declaraciones Sánchez sobre independencia judicial'
WHERE fuente_url = 'https://www.eldiario.es';

-- 6. lamoncloa.gob.es genérica → página de currículums
UPDATE evidencias SET
  fuente_url = 'https://www.lamoncloa.gob.es/gobierno/Paginas/composicion.aspx',
  fuente_nombre = 'La Moncloa - Composición del Gobierno y currículums'
WHERE fuente_url = 'https://www.lamoncloa.gob.es';

-- 7. uab.cat genérica → directorio investigadores
UPDATE evidencias SET
  fuente_url = 'https://www.uab.cat/web/investigacion/directorio-investigadores-1345680815743.html',
  fuente_nombre = 'UAB - Directorio de investigadores y doctores'
WHERE fuente_url = 'https://www.uab.cat';

-- 8. poderjudicial.es/cgpj genérica → CENDOJ
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/search/indexAN.jsp',
  fuente_nombre = 'CENDOJ - Buscador jurisprudencia Poder Judicial'
WHERE fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/';
