create table bron.bag_sps (
	landelijke_bag_sps_id bigint,
	sps_diva_id bigint,
	brt_id bigint,
	geometrie text,
	ingangsdatum_cyclus timestamp without time zone,
	einddatum_cyclus timestamp without time zone,
	opvoerdatum bigint,
	objectcyclusnr bigint,
	indauthentiek character(1),
	indgeconstateerd character(1),
	indinonderzoek character(1)
);
