select
	to_number(pdm.bag_identificatiecode)  as bag_identificatiecode,
	pnd_id,
	bbk_id,
	sdo_util.To_WKTgeometry(pandgeometrie) as geometrie,
	oorspronkelijk_bouwjaar,
	statuscode,
	laagste_bouwlaag,
	hoogste_bouwlaag,
	to_char(ingangsdatum_cyclus,'YYYYMMDD') as ingangsdatum_cyclus,
	to_char(einddatum_cyclus,'YYYYMMDD') as einddatum_cyclus,
	to_char(opvoerdatum,'YYYYMMDDHH24MMSS') as opvoerdatum,
	objectcyclusnr,
	indauthentiek,
	indgeconstateerd,
	indinonderzoek,
	naam
from
	gegmag.gvi_pand_data pnd
join
	gegmag.gvi_pand pdm
on
	pnd.pnd_id = pdm.id
;
