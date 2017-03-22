select
	to_number(vtm.bag_identificatiecode) as lv_bag_vot_id,
	to_number(mnum.bag_identificatiecode) as lv_bag_nag_id,
	aos.vot_id,
	aos.nag_id,
	aos.ind_hoofdadres,
	to_char(aos.ingangsdatum_geldigheid,'YYYYMMDD') as geldig_op,
	to_char(aos.opvoerdatum,'YYYYMMDDHH24MMSS') as kennisgegeven_op
from
	gegmag.gvi_objectadres aos
join
	gegmag.gvi_verblijfsobject_data vot
on
	aos.vot_id = vot.vot_id
join
	gegmag.gvi_verblijfsobject vtm
on
	aos.vot_id = vtm.id
join
	gegmag.gvi_nummeraanduiding mnum
on
	aos.nag_id = mnum.id
;
