create table bron.bag_pnd (
	landelijke_bag_pnd_id bigint,
	pnd_id bigint,
	bbk_id bigint,
	geometrie text,
	bouwjaar integer,
	statuscode integer,
	laagste_bouwlaag integer,
	hoogste_bouwlaag integer,
	geldig_op date,
	kennisgegeven_op bigint,
	indauthentiek character(1),
	indgeconstateerd character(1),
	indinonderzoek character(1),
	objectcyclusnr integer,
	naam character varying
);

