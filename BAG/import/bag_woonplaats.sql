--
create table bron.bag_woonplaats (
    datum_export varchar(8),
    diva_wps_id bigint,
    gme_id bigint,
    woonplaatsnaam varchar(80),
    woonplaatscode varchar(4),
    einddatum_geldigheid varchar(14),
    ingangsdatum_geldigheid varchar(14),
    mutatiedatum varchar(14)
    objectcyclusnr number,
    opvoerdatum varchar(14),
    wktgeometry text
)
;
--
