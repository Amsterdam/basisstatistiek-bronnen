select
	to_number(vtm.bag_identificatiecode) as lv_bag_vot_id,
	vot.vot_id as vot_diva_id,
	vot.brt_id as brt_id,
	SDO_UTIL.TO_WKTGEOMETRY(vot.geometrie) as geometrie,
	to_number(vot.gebruiksdoel_dmn) as gebruiksdoel,
	vot.oppervlakte as oppervlakte,
	to_number(vot.statuscode) as statuscode,
	vot.redenopvoercode as redenopvoer,
	vot.redenafvoercode as redenafvoer,
	vot.aantal_verhuurbare_eenheden as aantal_vhe,
	to_number(vot.liggingcode) as liggingcode,
	to_number(vot.gebruikscode) as feitelijkgebruik,
	to_number(vot.aantal_bouwlagen) as aantal_bouwlagen,
	vot.type_woonobject_dmn as object_type,
	vot.eigendomsverhoudingcode as eigendomsverhouding,
	vot.aantal_kamers as aantal_kamers,
	to_number(vot.toegangscode) as toegangscode,
	to_number(vot.locatieingangcode) as locatieingangcode,
	to_number(vot.bouwlaagtoegang) as bouwlaagtoegang,
	to_char(vot.ingangsdatum_cyclus,'YYYYMMDD') as geldig_op,
	to_char(vot.opvoerdatum,'YYYYMMDDHH24MMSS') as kennisgegeven_op,
	vot.objectcyclusnr,
	vot.indauthentiek,
	vot.indgeconstateerd,
	vot.indinonderzoek
from
	gegmag.gvi_verblijfsobject_data vot
join
	gegmag.gvi_verblijfsobject vtm
on
	vot.vot_id = vtm.id
;
