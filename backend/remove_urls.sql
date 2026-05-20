-- Eliminar todas las URLs de evidencias
-- Solo queda fuente_nombre y fecha_dato
UPDATE evidencias SET fuente_url = null, fuente_2_url = null;
