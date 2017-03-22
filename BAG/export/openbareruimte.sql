select
	to_number(orm.bag_identificatiecode) as bag_identificatiecode,
	ore.ore_id,
	ore.wps_id,
	to_number(ore.straatcode) as straatcode,
	to_number(ore.typering_dmn) as typering_dmn,
	ore.naam,
	ore.naam_nen,
	ore.naam_ptt,
	ore.zoeknaam,
	to_number(ore.statuscode) as statuscode,
	to_char(ore.ingangsdatum_geldigheid,'YYYYMMDD') as ingangsdatum_geldigheid,
	to_char(ore.einddatum_geldigheid,'YYYYMMDD') as einddatum_geldigheid,
	to_char(ore.opvoerdatum,'YYYYMMDDHH24MMSS') as opvoerdatum,
	ore.indauthentiek,
	ore.indgeconstateerd,
	ore.indinonderzoek,
	ore.objectcyclusnr
from
	gegmag.gvi_openbare_ruimte_data ore
join
	gegmag.gvi_openbare_ruimte orm
on
	ore.ore_id = orm.id
;
