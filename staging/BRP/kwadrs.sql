create table bron.kwadrs as
select distinct on(numids) '20161'::int as kwartaal, pttkod, huisnr, huislt, hstoev, strkod, bagids, numids, brtk15, bctk15, stad15, i22geb, i27geb, altbrt15, rayon15, brtk10 from bron.kw20161;
insert into bron.kwadrs
select '20162'::int as kwartaal, pttkod, huisnr, huislt, hstoev, strkod, bagids, numids, brtk15, bctk15, stad15, i22geb, i27geb, altbrt15, rayon15, brtk10 from bron.kw20162 as b
where not exists (select 1 from bron.kwadrs as a where a.numids = b.numids);
insert into bron.kwadrs
select '20163'::int as kwartaal, pttkod, huisnr, huislt, hstoev, strkod, bagids, numids, brtk15, bctk15, stad15, i22geb, i27geb, altbrt15, rayon15, brtk10 from bron.kw20163 as b
where not exists (select 1 from bron.kwadrs as a where a.numids = b.numids);
insert into bron.kwadrs
select '20164'::int as kwartaal, pttkod, huisnr, huislt, hstoev, strkod, bagids, numids, brtk15, bctk15, stad15, i22geb, i27geb, altbrt15, rayon15, brtk10 from bron.kw20164 as b
where not exists (select 1 from bron.kwadrs as a where a.numids = b.numids);
insert into bron.kwadrs
select '20171'::int as kwartaal, pttkod, huisnr, huislt, hstoev, strkod, bagids, numids, brtk15, bctk15, stad15, i22geb, i27geb, altbrt15, rayon15, brtk10 from bron.kw20171 as b
where not exists (select 1 from bron.kwadrs as a where a.numids = b.numids);

create index kwadrs_huisnr_idx on bron.kwadrs(huisnr);
create index kwadrs_huislt_idx on bron.kwadrs(huislt);
create index kwadrs_hstoev_idx on bron.kwadrs(hstoev);
create index kwadrs_pttkod_idx on bron.kwadrs(pttkod);
create index kwadrs_brtk15_idx on bron.kwadrs(brtk15);
