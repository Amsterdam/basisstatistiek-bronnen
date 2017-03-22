create table bron.bag_vot (
	landelijke_bag_vot_id bigint,
	vot_diva_id bigint,
	brt_id bigint,
	geometrie text,
	gebruiksdoel integer,
	oppervlakte integer,
	statuscode integer,
	redenopvoer character varying,
	redenafvoer character varying,
	aantal_vhe integer,
	liggingcode integer,
	feitelijkgebruik integer,
	aantal_bouwlagen integer,
	object_type character varying,
	eigendomsverhouding character varying,
	aantal_kamers integer,
	toegangscode integer,
	locatieingangcode integer,
	bouwlaagtoegang integer,
	geldig_op timestamp without time zone,
	kennisgegeven_op bigint,
	objectcyclusnr integer,
	indauthentiek character(1),
	indgeconstateerd character(1),
	 indinonderzoek character(1)
);
