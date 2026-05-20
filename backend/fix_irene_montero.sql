-- Corregir puntuación de Irene Montero
-- Económico: -2 por no presentar declaración fin legislatura 2023
-- 20 - 2 = 18. Total recalculado: (104-2)/110 * 100 = 93

UPDATE puntuaciones SET 
  bloque_economico = 18,
  total = 93
WHERE persona_id = (SELECT id FROM personas WHERE nombre_normalizado = 'irene montero') 
AND es_vigente = true;
