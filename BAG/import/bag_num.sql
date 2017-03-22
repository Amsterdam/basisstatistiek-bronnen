--
create table bron.bag_num (
	landelijke_bag_num_id bigint,
	num_id bigint,
	ore_id bigint,
	huisnummer integer,
	huisletter character varying,
	huisnummertoevoeging character varying,
	postcode character(6),
	object_type integer,
	statuscode integer,
	geldig_op timestamp without time zone,
	kennisgegeven_op bigint,
	adrescyclusnr integer,
	indauthentiek character(1),
	indgeconstateerd character(1),
	indinonderzoek character(1)
)
;
--