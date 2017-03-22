--
-- selecteer alle woonplaatsen (geen filters)
--
select
    to_char(sysdate,'yyyymmdd') as datum_export,
    wps_id,
    gme_id,
    woonplaatsnaam,
    woonplaatscode,
    to_char(documentdatum_mutatie,'yyyymmddHH24MI:ss') documentdatum_mutatie,
    documentnummer_mutatie,
    to_char(ingangsdatum_geldigheid,'yyyymmddHH24MI:ss') ingangsdatum_geldigheid,
    to_char(einddatum_geldigheid,'yyyymmddHH24MI:ss') einddatum_geldigheid,
    to_char(mutatiedatum,'yyyymmddHH24MI:ss') mutatiedatum,
    to_char(opvoerdatum,'yyyymmddHH24MI:ss') opvoerdatum,
    sdo_util.TO_WKTGEOMETRY(geometrie) wktgeometrie
from
    gegmag.gvi_woonplaats_data
;
--
--