create table bron.bag_ore (
	landelijke_bag_opr_id bigint,
	ore_id bigint,
	wps_id bigint,
	straatcode integer,
	ore_type integer,
	naam character varying(80),
	naam_nen character varying(24),
	naam_ptt character varying(32),
	zoeknaam character varying(80),
	statuscode integer,
	ingangsdatum_geldigheid date,
	einddatum_geldigheid date,
	kennisgegeven_op bigint,
	indauthentiek character(1),
	indgeconstateerd character(1),
	indinonderzoek character(1),
	objectcyclusnr integer
);
