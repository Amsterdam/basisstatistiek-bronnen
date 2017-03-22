create table bron.bag_lps (
	landelijke_bag_lps_id bigint,
	lps_diva_id bigint,
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
