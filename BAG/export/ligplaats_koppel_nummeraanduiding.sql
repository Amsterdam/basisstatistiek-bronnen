select
	to_number(lpm.bag_identificatiecode) as lv_bag_lps_id,
	to_number(mnum.bag_identificatiecode) as lv_bag_nag_id,
	aos.nag_id,
	aos.lps_id,
	aos.ind_hoofdadres,
	to_char(aos.ingangsdatum_geldigheid,'YYYYMMDD') as geldig_op,
	to_char(aos.opvoerdatum,'YYYYMMDDHH24MMSS') as kennisgegeven_op
from
	gegmag.gvi_objectadres aos
join
	gegmag.gvi_ligplaats_data lps
on
	aos.lps_id = lps.lps_id
join
	gegmag.gvi_ligplaats lpm
on
	aos.lps_id = lpm.id
join
	gegmag.gvi_nummeraanduiding mnum
on
	aos.nag_id = mnum.id
;
