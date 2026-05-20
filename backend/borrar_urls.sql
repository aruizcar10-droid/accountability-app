-- Borrar todas las URLs de evidencias
-- Solo quedará fuente_nombre y fecha_dato
UPDATE evidencias SET fuente_url = NULL, fuente_2_url = NULL;
