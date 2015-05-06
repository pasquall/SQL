-- Para saber o nivel de otimizacao do sistema, quando maior o numero
-- mais dados estao cacheados em RAM:
select (sum(blks_hit)/sum(blks_read+blks_hit))*100::integer from pg_stat_database;
