select
	id,
	pnd_id,
	vot_id,
	to_char(ingangsdatum_geldigheid,'YYYYMMDD') as ingangsdatum_geldigheid,
	to_char(einddatum_geldigheid,'YYYYMMDD') as einddatum_geldigheid,
from
	gegmag.gvi_pnd_vot
;
