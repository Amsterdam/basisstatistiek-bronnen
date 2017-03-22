select
	to_number(spm.bag_identificatiecode) as lv_bag_sps_id,
	to_number(mnum.bag_identificatiecode) as lv_bag_nag_id,
	aos.nag_id,
	aos.sps_id,
	aos.ind_hoofdadres,
	to_char(aos.ingangsdatum_geldigheid,'YYYYMMDD') as geldig_op,
	to_char(aos.opvoerdatum,'YYYYMMDDHH24MMSS') as kennisgegeven_op
from
	gegmag.gvi_objectadres aos
join
	gegmag.gvi_standplaats_data sps
on
	aos.sps_id = sps.sps_id
join
	gegmag.gvi_standplaats spm
on
	aos.sps_id = spm.id
join
	gegmag.gvi_nummeraanduiding mnum
on
	aos.nag_id = mnum.id
;
