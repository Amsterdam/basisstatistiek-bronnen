select
	to_number(mnum.bag_identificatiecode) as lv_bag_nag_id,
	num.nag_id,
	num.ore_id,
	num.huisnummer,
	num.huisletter,
	num.huisnummertoevoeging,
	num.postcode,
	to_number(num.type_adresseerbaar_object_dmn) as object_type,
	to_number(num.statuscode) as statuscode,
	to_char(num.ingangsdatum_cyclus,'YYYYMMDD') as geldig_op,
	to_char(num.opvoerdatum,'YYYYMMDDHH24MMSS') as kennisgegeven_op,
	num.adrescyclusnr,
	num.indauthentiek,
	num.indgeconstateerd,
	num.indinonderzoek
from
	gegmag.gvi_nummeraanduiding_data num
join
	gegmag.gvi_nummeraanduiding mnum
on
	num.nag_id = mnum.id
;
