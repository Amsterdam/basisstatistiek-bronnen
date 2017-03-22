Inhoud importeren key2burgerzaken BRP CSV dumps naar OIS
========================================================

Handleiding
-----------

Creëer de tabellen zoals beschreven in de SQL in deze map voor het kunnen dumpen van de data zoals in CSV vorm aangeleverd door basissinformatie.

Importeren ruwe kwartaalbestanden van BI naar de database bron.brp_stand
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Maak de volgende tabel:
https://git.datapunt.amsterdam.nl/Basisstatistiek/bronnen/blob/master/BRP/import/brp_onbewerkte_kwartaalbestanden.sql

Lokatie bestanden: g:\OIS\basisbestanden\bevolking\parapsn\jaar\kN\bron
waarbij jaar het betreffende jaar aangeeft en de N achter k het betreffende kwartaal (1 tm 4)

Bestand ``Bevriezingen_selectie.lst`` openen in notepad++ karakterset aanpassen naar ``utf8 (zonder BOM)`` en opslaan

* pgAdminIII openen
* ga naar basisstatistiek -> schemas -> bron -> tables -> brp_stand
* druk met rechtermuisknop op brp_stand en selecteer import
* file options:

  * browse naar het juiste bestand,
  * format: csv
  * encoding: utf8

* misc options:

  * delimiter ``;``
 
* quote options:

  * quote: ``~``

druk op import.
