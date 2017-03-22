create table bron.adressen as
select
	distinct on(a.lv_bag_nag_id, huisnummer, huisletter, huisnummertoevoeging, postcode, straatcode, d.lv_bag_vot_id, buurtcode)
	a.lv_bag_nag_id as numids,
	a.huisnummer,
	a.huisletter,
	a.huisnummertoevoeging,
	substring(a.postcode, 1, 4)::int as postcode4,
	substring(a.postcode, 5, 2) as postcode2,
	(select straatcode from bron.bag_ore as b where b.ore_id = a.ore_id order by ingangsdatum_geldigheid desc limit 1) as straatcode,
	d.lv_bag_vot_id as object_id,
	(select brtsdl_sdl_stadsdeelcode || buurtcode from bron.bag_brt as e where e.sleutelverzendend = d.brt_id order by tijdvakgeldigheid_begindatumtijdvakgeldigheid desc limit 1) as buurtcode,
	(select tijdvakgeldigheid_begindatumtijdvakgeldigheid from bron.bag_brt as e where e.sleutelverzendend = d.brt_id order by tijdvakgeldigheid_begindatumtijdvakgeldigheid desc limit 1) as brt_geldig_op,
	'verblijfsobject'::varchar as object_type
from
	bron.bag_num as a
left join
	bron.bag_aos as c
on
	a.lv_bag_nag_id = c.lv_bag_nag_id
left join
	(select
		distinct on(lv_bag_vot_id)
		*
	from
		bron.bag_vot
	order by
		lv_bag_vot_id, objectcyclusnr desc
	) as d
on
	c.lv_bag_vot_id = d.lv_bag_vot_id
where
	d.lv_bag_vot_id is not null
union all
select
	distinct on(a.lv_bag_nag_id, huisnummer, huisletter, huisnummertoevoeging, postcode, straatcode, d.lv_bag_lps_id, buurtcode)
	a.lv_bag_nag_id as numids,
	a.huisnummer,
	a.huisletter,
	a.huisnummertoevoeging,
	substring(a.postcode, 1, 4)::int as postcode4,
	substring(a.postcode, 5, 2) as postcode2,
	(select straatcode from bron.bag_ore as b where b.ore_id = a.ore_id order by ingangsdatum_geldigheid desc limit 1) as straatcode,
	d.lv_bag_lps_id as object_id,
	(select brtsdl_sdl_stadsdeelcode || buurtcode from bron.bag_brt as e where e.sleutelverzendend = d.brt_id order by tijdvakgeldigheid_begindatumtijdvakgeldigheid desc limit 1) as buurtcode,
	(select tijdvakgeldigheid_begindatumtijdvakgeldigheid from bron.bag_brt as e where e.sleutelverzendend = d.brt_id order by tijdvakgeldigheid_begindatumtijdvakgeldigheid desc limit 1) as brt_geldig_op,
	'ligplaats'::varchar as object_type
from
	bron.bag_num as a
left join
	bron.bag_als as c
on
	a.lv_bag_nag_id = c.lv_bag_nag_id
left join
	(select
		distinct on(lv_bag_lps_id)
		*
	from
		bron.bag_lps
	order by
		lv_bag_lps_id, objectcyclusnr desc
	) as d
on
	c.lv_bag_lps_id = d.lv_bag_lps_id
where
	d.lv_bag_lps_id is not null
union all
select
	distinct on(a.lv_bag_nag_id, huisnummer, huisletter, huisnummertoevoeging, postcode, straatcode, d.lv_bag_sps_id, buurtcode)
	a.lv_bag_nag_id as numids,
	a.huisnummer,
	a.huisletter,
	a.huisnummertoevoeging,
	substring(a.postcode, 1, 4)::int as postcode4,
	substring(a.postcode, 5, 2) as postcode2,
	(select straatcode from bron.bag_ore as b where b.ore_id = a.ore_id order by ingangsdatum_geldigheid desc limit 1) as straatcode,
	d.lv_bag_sps_id as object_id,
	(select brtsdl_sdl_stadsdeelcode || buurtcode from bron.bag_brt as e where e.sleutelverzendend = d.brt_id order by tijdvakgeldigheid_begindatumtijdvakgeldigheid desc limit 1) as buurtcode,
	(select tijdvakgeldigheid_begindatumtijdvakgeldigheid from bron.bag_brt as e where e.sleutelverzendend = d.brt_id order by tijdvakgeldigheid_begindatumtijdvakgeldigheid desc limit 1) as brt_geldig_op,
	'standplaats'::varchar as object_type
from
	bron.bag_num as a
left join
	bron.bag_ass as c
on
	a.lv_bag_nag_id = c.lv_bag_nag_id
left join
	(select
		distinct on(lv_bag_sps_id)
		*
	from
		bron.bag_sps
	order by
		lv_bag_sps_id, objectcyclusnr desc
	) as d
on
	c.lv_bag_sps_id = d.lv_bag_sps_id
where
	d.lv_bag_sps_id is not null;