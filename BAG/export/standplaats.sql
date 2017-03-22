select
	spsm.bag_identificatiecode as bag_identificatiecode,
	to_number(sps.sps_id) as sps_id,
	to_number(sps.brt_id) as brt_id,
	SDO_UTIL.TO_WKTGEOMETRY(sps.geometrie)      as geometrie,
	to_char(sps.ingangsdatum_cyclus,'YYYYMMDD') as ingangsdatum_cyclus,
	to_char(sps.einddatum_cyclus,'YYYYMMDD')    as einddatum_cyclus,
	to_char(opvoerdatum,'YYYYMMDDHH24MMSS')     as opvoerdatum,
	sps.objectcyclusnr,
	sps.indauthentiek,
	sps.indgeconstateerd,
	sps.indinonderzoek
from
	gegmag.gvi_standplaats_data sps
join
	gegmag.gvi_standplaats spsm
on
	sps.sps_id = spsm.id
;
