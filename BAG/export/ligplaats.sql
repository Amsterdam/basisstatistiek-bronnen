select
	to_number(lpsm.bag_identificatiecode) as bag_identificatiecode,
	to_number(lps.lps_id) as lps_id,
	to_number(lps.brt_id) as brt_id,
	SDO_UTIL.TO_WKTGEOMETRY(lps.geometrie) as geometrie,
	to_char(lps.ingangsdatum_cyclus,'YYYYMMDD') as ingangsdatum_cyclus,
	to_char(lps.einddatum_cyclus,'YYYYMMDD') as einddatum_cyclus,
	to_char(opvoerdatum,'YYYYMMDDHH24MMSS') as opvoerdatum,
	lps.objectcyclusnr,
	lps.indauthentiek,
	lps.indgeconstateerd,
	lps.indinonderzoek
from
	gegmag.gvi_ligplaats_data lps
join
	gegmag.gvi_ligplaats lpsm
on
	lps.lps_id = lpsm.id;
