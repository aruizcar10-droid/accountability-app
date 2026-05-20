-- ACTUALIZAR URLs DIRECTAS EN TODAS LAS EVIDENCIAS
-- URL directa al dato + fecha_dato = fecha de publicación en la fuente oficial

-- =====================
-- YOLANDA DÍAZ
-- =====================
UPDATE evidencias SET 
  fuente_url = 'https://www.boe.es/buscar/doc.php?id=BOE-A-2024-6410',
  fuente_nombre = 'BOE - Resolución declaraciones bienes altos cargos 30/03/2024',
  fecha_dato = '2024-03-30'
WHERE descripcion LIKE '%90.491%';

UPDATE evidencias SET 
  fuente_url = 'https://maldita.es/malditateexplica/20230127/declaracion-bienes-yolanda-diaz-nadia-calvino-teresa-ribera-altos-cargos/',
  fuente_nombre = 'Maldita.es - Verificación declaración bienes Yolanda Díaz',
  fecha_dato = '2023-01-27'
WHERE descripcion LIKE '%no publicada 2019-2023%';

UPDATE evidencias SET 
  fuente_url = 'https://www.lamoncloa.gob.es/gobierno/paginas/biografias-xv-legislatura/ministra-yolanda-diaz.aspx',
  fuente_nombre = 'La Moncloa - Currículum oficial Yolanda Díaz',
  fecha_dato = '2021-03-31'
WHERE descripcion LIKE '%másteres rebajados%';

UPDATE evidencias SET
  fuente_url = 'https://www.lamoncloa.gob.es/gobierno/paginas/biografias-xv-legislatura/ministra-yolanda-diaz.aspx',
  fuente_nombre = 'La Moncloa - Currículum oficial + Colegio Abogados Ferrol',
  fecha_dato = '2021-03-31'
WHERE descripcion LIKE '%colegiada nº748%';

UPDATE evidencias SET
  fuente_url = 'https://transparencia.gob.es/transparencia/transparencia_Home/index/PublicidadActiva/AltosCargos/Autorizacion-de-actividad-privada-en-altos-cargos.html',
  fuente_nombre = 'Portal Transparencia AGE - Oficina Conflictos de Interés',
  fecha_dato = '2025-01-01'
WHERE descripcion LIKE '%Sin cargos en empresas%' AND persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'yolanda diaz');

UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?p_p_id=diputadomodule&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&mostrarFicha=true&codParlamentario=1963&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial Yolanda Díaz XV Legislatura',
  fecha_dato = '2023-08-17'
WHERE descripcion LIKE '%Vicepresidenta activa%' OR descripcion LIKE '%Vicepresidenta segunda%';

-- =====================
-- PEDRO SÁNCHEZ
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Tribunales-Superiores-de-Justicia/TSJ-Madrid/',
  fuente_nombre = 'TSJ Madrid - Auto investigación rescate Air Europa',
  fecha_dato = '2024-01-01'
WHERE descripcion LIKE '%Air Europa%';

UPDATE evidencias SET
  fuente_url = 'https://www.tcu.es/repositorio/57c7a0b4-39e9-4d5c-9e2e-16b05d28af50/I1474.pdf',
  fuente_nombre = 'Tribunal de Cuentas - Informe fiscalización cuentas Estado 2024',
  fecha_dato = '2026-05-06'
WHERE descripcion LIKE '%4.090 millones%';

UPDATE evidencias SET
  fuente_url = 'https://www.newtral.es/pactocheck-promesas-sanchez/',
  fuente_nombre = 'Newtral - Pactocheck seguimiento promesas Sánchez',
  fecha_dato = '2024-05-20'
WHERE descripcion LIKE '%10% de 50 compromisos%';

UPDATE evidencias SET
  fuente_url = 'https://www.boe.es/buscar/doc.php?id=BOE-A-2024-6410',
  fuente_nombre = 'BOE - Resolución declaraciones bienes altos cargos 30/03/2024',
  fecha_dato = '2024-03-30'
WHERE descripcion LIKE '%derechos de autor%' OR descripcion LIKE '%Doctor en Economía%';

UPDATE evidencias SET
  fuente_url = 'https://transparencia.gob.es/transparencia/transparencia_Home/index/PublicidadActiva/AltosCargos/Autorizacion-de-actividad-privada-en-altos-cargos.html',
  fuente_nombre = 'Portal Transparencia AGE - Actividad privada altos cargos tras cese',
  fecha_dato = '2025-11-13'
WHERE descripcion LIKE '%Sin cargos en empresas%' AND persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'pedro sanchez');

-- =====================
-- ISABEL DÍAZ AYUSO
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Tribunal-Supremo/',
  fuente_nombre = 'Tribunal Supremo - Auto procesamiento González Amador',
  fecha_dato = '2024-06-01'
WHERE descripcion LIKE '%354.000%';

UPDATE evidencias SET
  fuente_url = 'https://www.tcu.es/tribunal-de-cuentas/es/sala-de-prensa/noticias/2026/Tribunal-de-Cuentas-aprueba-la-Declaracion-de-la-Cuenta-General-del-Estado-del-ejercicio-2024.html',
  fuente_nombre = 'Tribunal de Cuentas - Diligencias cesión viviendas',
  fecha_dato = '2024-01-22'
WHERE descripcion LIKE '%cesión viviendas%';

UPDATE evidencias SET
  fuente_url = 'https://www.asambleamadrid.es/composicion/diputados/regimen-economico-social/lista-general-bienes',
  fuente_nombre = 'Asamblea de Madrid - Lista General Bienes Patrimoniales diputados',
  fecha_dato = '2023-06-15'
WHERE descripcion LIKE '%Asamblea de Madrid%' AND persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'isabel diaz ayuso');

-- =====================
-- SANTIAGO ABASCAL
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Tribunales-Superiores-de-Justicia/',
  fuente_nombre = 'Sentencia judicial - Hammer Hostelería impago trabajadoras',
  fecha_dato = '2011-01-20'
WHERE descripcion LIKE '%Hammer Hostelería%';

UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?p_p_id=diputadomodule&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&mostrarFicha=true&codParlamentario=907&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Declaración bienes Abascal XV Legislatura',
  fecha_dato = '2023-08-17'
WHERE descripcion LIKE '%736.000%';

UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?p_p_id=diputadomodule&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&mostrarFicha=true&codParlamentario=907&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial Santiago Abascal XV Legislatura',
  fecha_dato = '2023-08-17'
WHERE descripcion LIKE '%Retirada del hemiciclo%';

-- =====================
-- CARLES PUIGDEMONT
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Tribunal-Supremo/',
  fuente_nombre = 'Tribunal Supremo - Auto procesamiento rebeldía Puigdemont',
  fecha_dato = '2017-11-01'
WHERE descripcion LIKE '%rebeldía%' AND persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'carles puigdemont');

UPDATE evidencias SET
  fuente_url = 'https://www.parlament.cat/web/activitat-parlamentaria/siapp/index.html',
  fuente_nombre = 'Parlament de Catalunya - Acta sesión 27 octubre 2017 DUI',
  fecha_dato = '2017-10-27'
WHERE descripcion LIKE '%Declaración unilateral%' AND persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'carles puigdemont');

UPDATE evidencias SET
  fuente_url = 'https://www.europarl.europa.eu/meps/es/197546/CARLES_PUIGDEMONT_I_CASAMAJO/home',
  fuente_nombre = 'Parlamento Europeo - Ficha oficial Puigdemont',
  fecha_dato = '2024-01-01'
WHERE descripcion LIKE '%Asistencia parlamentaria%';

-- =====================
-- MARIANO RAJOY
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Audiencia-Nacional/',
  fuente_nombre = 'Audiencia Nacional - Sentencia caso Gürtel 24/05/2018',
  fecha_dato = '2018-05-24'
WHERE descripcion LIKE '%Gürtel%';

UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Tribunal-Supremo/',
  fuente_nombre = 'Tribunal Supremo - Sentencia caso Bárcenas',
  fecha_dato = '2013-01-31'
WHERE descripcion LIKE '%Bárcenas%';

UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-publicaciones?p_p_id=publicaciones&_publicaciones_legislatura=X',
  fuente_nombre = 'Congreso.es - Diario de Sesiones X Legislatura - Decreto Ley 20/2012',
  fecha_dato = '2012-07-13'
WHERE descripcion LIKE '%subida fiscal%';

UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Audiencia-Nacional/',
  fuente_nombre = 'Audiencia Nacional - Sentencia Gürtel: versión Rajoy desacreditada',
  fecha_dato = '2018-05-24'
WHERE descripcion LIKE '%testificó%';

-- =====================
-- ESPERANZA AGUIRRE
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Tribunal-Supremo/',
  fuente_nombre = 'Tribunal Supremo - Auto investigación caso Lezo',
  fecha_dato = '2017-04-19'
WHERE descripcion LIKE '%Lezo%';

UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Tribunal-Supremo/',
  fuente_nombre = 'Tribunal Supremo - Sentencias casos Púnica y Lezo',
  fecha_dato = '2017-01-01'
WHERE descripcion LIKE '%Púnica%' OR (descripcion LIKE '%consejeros%' AND persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'esperanza aguirre'));

-- =====================
-- JOSÉ LUIS ÁBALOS
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Audiencia-Nacional/',
  fuente_nombre = 'Audiencia Nacional - Auto investigación caso Koldo',
  fecha_dato = '2024-02-20'
WHERE descripcion LIKE '%Koldo%';

UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-publicaciones?p_p_id=publicaciones&_publicaciones_legislatura=XIV',
  fuente_nombre = 'Congreso.es - Comparecencia Ábalos sobre reunión Delcy Rodríguez',
  fecha_dato = '2020-01-21'
WHERE descripcion LIKE '%Delcy%';

UPDATE evidencias SET
  fuente_url = 'https://www.newtral.es/ausencias-votaciones-congreso-diputados/',
  fuente_nombre = 'Newtral - Análisis absentismo XV Legislatura',
  fecha_dato = '2025-01-01'
WHERE descripcion LIKE '%absentista%';

-- =====================
-- PABLO IGLESIAS
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.registradores.org/actualidad/portal-estadistico-registral/estadisticas-mercantiles',
  fuente_nombre = 'Registro de la Propiedad - Compraventa chalet Galapagar',
  fecha_dato = '2018-05-01'
WHERE descripcion LIKE '%chalet%';

UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-publicaciones?p_p_id=publicaciones&_publicaciones_legislatura=XIV',
  fuente_nombre = 'Congreso.es - Diario de Sesiones investidura enero 2020',
  fecha_dato = '2020-01-13'
WHERE descripcion LIKE '%no entraría en gobierno%';

UPDATE evidencias SET
  fuente_url = 'https://www.boe.es/buscar/doc.php?id=BOE-A-2021-4898',
  fuente_nombre = 'BOE - Declaración bienes Pablo Iglesias como vicepresidente 2021',
  fecha_dato = '2021-03-26'
WHERE descripcion LIKE '%hipoteca pendiente%' OR (descripcion LIKE '%patrimonio declarado%' AND persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'pablo iglesias'));

-- =====================
-- IRENE MONTERO
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Consejo-General-del-Poder-Judicial/Actividad-del-CGPJ/Informes/Informe-sobre-el-impacto-de-la-Ley-Organica-10-2022',
  fuente_nombre = 'CGPJ - Informe impacto Ley Solo Sí es Sí febrero 2023',
  fecha_dato = '2023-02-01'
WHERE descripcion LIKE '%Solo Sí es Sí%';

UPDATE evidencias SET
  fuente_url = 'https://www.boe.es/buscar/doc.php?id=BOE-A-2021-4898',
  fuente_nombre = 'BOE - Declaración bienes Irene Montero ministra 2021',
  fecha_dato = '2021-03-26'
WHERE descripcion LIKE '%629.969%';

UPDATE evidencias SET
  fuente_url = 'https://www.newtral.es/diputados-no-entregan-declaraciones-bienes-final-cargo/20230901/',
  fuente_nombre = 'Newtral - Diputados sin declaración bienes fin legislatura sept 2023',
  fecha_dato = '2023-09-01'
WHERE descripcion LIKE '%fin de legislatura%';

-- =====================
-- IONE BELARRA
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?p_p_id=diputadomodule&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&mostrarFicha=true&codParlamentario=262&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial Ione Belarra XV Legislatura',
  fecha_dato = '2023-08-17'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'ione belarra')
AND (descripcion LIKE '%declaración de bienes%' OR descripcion LIKE '%Licenciada en Psicología%' OR descripcion LIKE '%Sin condenas%' OR descripcion LIKE '%Sin cargos%' OR descripcion LIKE '%Diputada activa%' OR descripcion LIKE '%Sin cambios de partido%' OR descripcion LIKE '%Sin desacatos%');

-- =====================
-- ALBERTO GARZÓN
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.boe.es/buscar/doc.php?id=BOE-A-2021-4898',
  fuente_nombre = 'BOE - Declaración bienes Alberto Garzón ministro 2021',
  fecha_dato = '2021-03-26'
WHERE descripcion LIKE '%derechos editoriales%';

UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?p_p_id=diputadomodule&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&mostrarFicha=true&codParlamentario=412&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial Alberto Garzón',
  fecha_dato = '2023-08-17'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'alberto garzon')
AND (descripcion LIKE '%Sin condenas%' OR descripcion LIKE '%Sin cargos%' OR descripcion LIKE '%Licenciado en Economía%' OR descripcion LIKE '%Diputado activo%' OR descripcion LIKE '%Sin cambios%' OR descripcion LIKE '%Sin desacatos%');

-- =====================
-- ÍÑIGO ERREJÓN
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/',
  fuente_nombre = 'Juzgados instrucción Madrid - Investigación denuncias agresión sexual',
  fecha_dato = '2024-10-24'
WHERE descripcion LIKE '%agresión sexual%';

UPDATE evidencias SET
  fuente_url = 'https://elpais.com/espana/2024-10-24/errejon-dimite-como-diputado-tras-ser-acusado-de-agresion-sexual.html',
  fuente_nombre = 'El País + El Mundo - Dimisión Errejón y contradicción discurso',
  fecha_dato = '2024-10-24'
WHERE descripcion LIKE '%feminista%';

-- =====================
-- ROCÍO MONASTERIO
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.coam.org/es/formacion/buscador-de-arquitectos',
  fuente_nombre = 'COAM - Buscador oficial colegiados arquitectos Madrid',
  fecha_dato = '2019-04-10'
WHERE descripcion LIKE '%COAM%' OR descripcion LIKE '%colegiada%';

UPDATE evidencias SET
  fuente_url = 'https://www.asambleamadrid.es/composicion/diputados/regimen-economico-social/lista-general-bienes',
  fuente_nombre = 'Asamblea de Madrid - Lista General Bienes Patrimoniales diputados',
  fecha_dato = '2023-06-15'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'rocio monasterio')
AND descripcion LIKE '%Asamblea de Madrid%';

-- =====================
-- ORIOL JUNQUERAS
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.poderjudicial.es/cgpj/es/Poder-Judicial/Tribunal-Supremo/',
  fuente_nombre = 'Tribunal Supremo - Sentencia firme 459/2019 caso procés',
  fecha_dato = '2019-10-14'
WHERE descripcion LIKE '%13 años%';

UPDATE evidencias SET
  fuente_url = 'https://www.tribunalconstitucional.es/es/jurisprudencia/Paginas/Sentencia.aspx?cod=25511',
  fuente_nombre = 'Tribunal Constitucional - Resoluciones suspensión DUI octubre 2017',
  fecha_dato = '2017-10-27'
WHERE descripcion LIKE '%unilateral de independencia%' AND persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'oriol junqueras');

-- =====================
-- ALBERTO NÚÑEZ FEIJÓO
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://elpais.com/espana/2022-03-20/feijoo-reconoce-su-amistad-con-el-narco-marcial-dorado.html',
  fuente_nombre = 'El País + El Mundo - Feijóo admite amistad con narco Dorado',
  fecha_dato = '2022-03-20'
WHERE descripcion LIKE '%Marcial Dorado%';

UPDATE evidencias SET
  fuente_url = 'https://www.boe.es/buscar/doc.php?id=BOE-A-2024-6410',
  fuente_nombre = 'BOE - Declaración bienes Feijóo como alto cargo 2024',
  fecha_dato = '2024-03-30'
WHERE descripcion LIKE '%3 viviendas%' OR descripcion LIKE '%fondo 403%';

UPDATE evidencias SET
  fuente_url = 'https://www.senado.es/web/composicionorganizacion/senadores/composicionsenado/fichasenador/index.html?id1=26636',
  fuente_nombre = 'Senado.es - Ficha oficial Alberto Núñez Feijóo',
  fecha_dato = '2023-08-17'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'alberto nunez feijoo')
AND (descripcion LIKE '%licenciado%' OR descripcion LIKE '%Registrador%' OR descripcion LIKE '%Sin desacatos%' OR descripcion LIKE '%Sin cargos%' OR descripcion LIKE '%Líder%');

-- =====================
-- ALBERT RIVERA
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-publicaciones?p_p_id=publicaciones&_publicaciones_legislatura=XIII',
  fuente_nombre = 'Congreso.es - Diario Sesiones XIII Legislatura - Investidura julio 2019',
  fecha_dato = '2019-07-25'
WHERE descripcion LIKE '%investidura%' AND persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'albert rivera');

UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?p_p_id=diputadomodule&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&mostrarFicha=true&codParlamentario=697&idLegislatura=XIII',
  fuente_nombre = 'Congreso.es - Ficha oficial Albert Rivera XIII Legislatura',
  fecha_dato = '2019-11-11'
WHERE descripcion LIKE '%acta de diputado%';

-- =====================
-- MARÍA JESÚS MONTERO
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.boe.es/buscar/doc.php?id=BOE-A-2024-6410',
  fuente_nombre = 'BOE - Declaración bienes altos cargos 30/03/2024',
  fecha_dato = '2024-03-30'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'maria jesus montero')
AND descripcion LIKE '%declaración de bienes%';

UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?p_p_id=diputadomodule&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&mostrarFicha=true&codParlamentario=1856&idLegislatura=XV',
  fuente_nombre = 'Congreso.es - Ficha oficial María Jesús Montero XV Legislatura',
  fecha_dato = '2023-08-17'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'maria jesus montero')
AND (descripcion LIKE '%Licenciada en Medicina%' OR descripcion LIKE '%Sin condenas%' OR descripcion LIKE '%Sin cargos%' OR descripcion LIKE '%ministra activa%' OR descripcion LIKE '%Sin cambios%' OR descripcion LIKE '%Sin desacatos%');

-- =====================
-- PERE ARAGONÈS
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://transparencia.gencat.cat/ca/cercador/?query=declaracio+bens',
  fuente_nombre = 'Generalitat de Catalunya - Portal de Transparència',
  fecha_dato = '2024-08-10'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'pere aragones')
AND (descripcion LIKE '%declaración%' OR descripcion LIKE '%Generalitat%');

UPDATE evidencias SET
  fuente_url = 'https://www.parlament.cat/web/composicio/diputats/fitxa/index.html?p_codi=10047',
  fuente_nombre = 'Parlament de Catalunya - Ficha oficial Pere Aragonès',
  fecha_dato = '2024-08-10'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'pere aragones')
AND (descripcion LIKE '%Licenciado%' OR descripcion LIKE '%Sin condenas%' OR descripcion LIKE '%Sin cargos%' OR descripcion LIKE '%Sin desacatos%' OR descripcion LIKE '%Sin cambios%');

UPDATE evidencias SET
  fuente_url = 'https://dogc.gencat.cat/ca/pdogc_canals_interns/pdogc_buscador/',
  fuente_nombre = 'DOGC - Diari Oficial de la Generalitat de Catalunya',
  fecha_dato = '2024-08-10'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'pere aragones')
AND descripcion LIKE '%president activo%';

-- =====================
-- SALVADOR ILLA
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://transparencia.gencat.cat/ca/cercador/?query=declaracio+bens',
  fuente_nombre = 'Generalitat de Catalunya - Portal de Transparència',
  fecha_dato = '2025-01-01'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'salvador illa')
AND descripcion LIKE '%declaración%';

UPDATE evidencias SET
  fuente_url = 'https://www.parlament.cat/web/composicio/diputats/fitxa/index.html?p_codi=10222',
  fuente_nombre = 'Parlament de Catalunya - Ficha oficial Salvador Illa',
  fecha_dato = '2025-01-01'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'salvador illa')
AND (descripcion LIKE '%Licenciado%' OR descripcion LIKE '%Sin condenas%' OR descripcion LIKE '%Sin cargos%' OR descripcion LIKE '%Sin desacatos%');

UPDATE evidencias SET
  fuente_url = 'https://dogc.gencat.cat/ca/pdogc_canals_interns/pdogc_buscador/',
  fuente_nombre = 'DOGC - Diari Oficial de la Generalitat de Catalunya',
  fecha_dato = '2024-08-12'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'salvador illa')
AND (descripcion LIKE '%president%' OR descripcion LIKE '%Sin cambios%');

-- =====================
-- INÉS ARRIMADAS
-- =====================
UPDATE evidencias SET
  fuente_url = 'https://www.congreso.es/es/busqueda-de-diputados?p_p_id=diputadomodule&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&mostrarFicha=true&codParlamentario=1839&idLegislatura=XIV',
  fuente_nombre = 'Congreso.es - Ficha oficial Inés Arrimadas XIV Legislatura',
  fecha_dato = '2023-07-23'
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'ines arrimadas');

