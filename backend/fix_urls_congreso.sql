-- CORREGIR URLs DEL CONGRESO - usando codParlamentario verificados
-- Formato correcto: _diputadomodule_mostrarFicha=true&codParlamentario=XXX

-- PEDRO SÁNCHEZ (cod 189)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?_diputadomodule_mostrarFicha=true&codParlamentario=189&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial Pedro Sánchez XV Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'pedro sanchez')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- YOLANDA DÍAZ (cod 342)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?_diputadomodule_mostrarFicha=true&codParlamentario=342&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial Yolanda Díaz XV Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'yolanda diaz')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- IONE BELARRA (cod 262)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?_diputadomodule_mostrarFicha=true&codParlamentario=262&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial Ione Belarra XV Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'ione belarra')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- SANTIAGO ABASCAL (cod 317)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?_diputadomodule_mostrarFicha=true&codParlamentario=317&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial Santiago Abascal XV Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'santiago abascal')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- MARÍA JESÚS MONTERO (cod 337)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?_diputadomodule_mostrarFicha=true&codParlamentario=337&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial María Jesús Montero XV Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'maria jesus montero')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- ÍÑIGO ERREJÓN (cod 301 - diputado sustituido XV)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/diputados-sustituidos-y-sustitutos?_diputadomodule_mostrarFicha=true&_diputadomodule_codParlamentario=301&_diputadomodule_idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial Íñigo Errejón XV Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'inigo errejon')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- IRENE MONTERO (ahora eurodiputada)
UPDATE evidencias SET
  fuente_url = 'https://www.europarl.europa.eu/meps/es/245770/IRENE_MONTERO/home',
  fuente_nombre = 'Parlamento Europeo - Ficha oficial Irene Montero'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'irene montero')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- PABLO IGLESIAS (última legislatura XIV, cod histórico)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/historico-diputados?p_p_id=diputadomodule&_diputadomodule_mostrarFicha=true&codParlamentario=278&idLegislatura=XIV',
  fuente_nombre = 'Congreso.es - Ficha histórica Pablo Iglesias XIV Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'pablo iglesias')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- ALBERTO GARZÓN (histórico)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/historico-diputados?p_p_id=diputadomodule&_diputadomodule_mostrarFicha=true&codParlamentario=183&idLegislatura=XIV',
  fuente_nombre = 'Congreso.es - Ficha histórica Alberto Garzón XIV Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'alberto garzon')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- JOSÉ LUIS ÁBALOS (XV legislatura)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?_diputadomodule_mostrarFicha=true&codParlamentario=181&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial José Luis Ábalos XV Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'jose luis abalos')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- ALBERTO NÚÑEZ FEIJÓO (Senado)
UPDATE evidencias SET
  fuente_url = 'https://www.senado.es/web/composicionorganizacion/senadores/composicionsenado/fichasenador/index.html?id1=26636',
  fuente_nombre = 'Senado.es - Ficha oficial Alberto Núñez Feijóo'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo')
AND (fuente_url LIKE '%senado.es%' OR fuente_nombre LIKE '%Senado%');

-- ALBERT RIVERA (histórico XIII legislatura)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/historico-diputados?p_p_id=diputadomodule&_diputadomodule_mostrarFicha=true&codParlamentario=284&idLegislatura=XIII',
  fuente_nombre = 'Congreso.es - Ficha histórica Albert Rivera XIII Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'albert rivera')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- INÉS ARRIMADAS (histórico XIV legislatura)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/historico-diputados?p_p_id=diputadomodule&_diputadomodule_mostrarFicha=true&codParlamentario=1839&idLegislatura=XIV',
  fuente_nombre = 'Congreso.es - Ficha histórica Inés Arrimadas XIV Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'ines arrimadas')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- ROCÍO MONASTERIO (Asamblea de Madrid)
UPDATE evidencias SET
  fuente_url = 'https://www.asambleamadrid.es/composicion/diputados/regimen-economico-social/lista-general-bienes',
  fuente_nombre = 'Asamblea de Madrid - Lista General Bienes diputados (actualizada)'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'rocio monasterio')
AND fuente_url LIKE '%asambleamadrid%';

-- ISABEL DÍAZ AYUSO (Asamblea de Madrid)  
UPDATE evidencias SET
  fuente_url = 'https://www.asambleamadrid.es/composicion/diputados/regimen-economico-social/lista-general-bienes',
  fuente_nombre = 'Asamblea de Madrid - Lista General Bienes diputados (actualizada)'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'isabel diaz ayuso')
AND fuente_url LIKE '%asambleamadrid%';

-- MARIANO RAJOY (ficha histórica Congreso)
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/historico-diputados?p_p_id=diputadomodule&_diputadomodule_mostrarFicha=true&codParlamentario=1&idLegislatura=X',
  fuente_nombre = 'Congreso.es - Ficha histórica Mariano Rajoy X Legislatura'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'mariano rajoy')
AND (fuente_url LIKE '%congreso.es%' OR fuente_nombre LIKE '%Congreso%');

-- ESPERANZA AGUIRRE (ficha histórica Senado)
UPDATE evidencias SET
  fuente_url = 'https://www.senado.es/web/composicionorganizacion/senadores/composicionsenado/fichasenador/index.html?id1=3488',
  fuente_nombre = 'Senado.es - Ficha histórica Esperanza Aguirre'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'esperanza aguirre')
AND (fuente_url LIKE '%senado.es%' OR fuente_nombre LIKE '%Senado%');

-- ORIOL JUNQUERAS (Parlamento Europeo, indultado)
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Tribunal-Supremo/Noticias-Judiciales/El-Tribunal-Supremo-condena-a-los-lideres-del-procés',
  fuente_nombre = 'Tribunal Supremo - Nota de prensa sentencia procés 14/10/2019'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'oriol junqueras')
AND fuente_url LIKE '%poderjudicial%';
