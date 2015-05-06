-- Mede otimizacao do PostgreSQL
-- perc_tab: % de leitura de cache, maior melhor
-- perc_idx: % de leitura de indice, maior melhor
-- size em bytes

SELECT 
	pg_class.relname, 
	pg_statio_user_tables.heap_blks_hit, 
	pg_statio_user_tables.heap_blks_read, 
	(pg_statio_user_tables.heap_blks_hit::double precision * 100::double precision / (pg_statio_user_tables.heap_blks_hit + pg_statio_user_tables.heap_blks_read)::double precision)::numeric(5,2) AS perc_tab, 
	pg_statio_user_tables.idx_blks_hit, 
	pg_statio_user_tables.idx_blks_read, 
	(pg_statio_user_tables.idx_blks_hit::double precision * 100::double precision / (pg_statio_user_tables.idx_blks_hit + NULLIF(pg_statio_user_tables.idx_blks_read, 0))::double precision)::numeric(5,2) AS perc_idx, 
	pg_class.relpages * 8192::bigint AS size, 
	pg_stat_user_tables.seq_scan, 
	pg_stat_user_tables.idx_scan
FROM 
	pg_statio_user_tables
		JOIN pg_class ON pg_class.oid = pg_statio_user_tables.relid
		JOIN pg_stat_user_tables ON pg_class.oid = pg_stat_user_tables.relid
WHERE 
	pg_statio_user_tables.heap_blks_read > 0
ORDER BY
	pg_statio_user_tables.heap_blks_read DESC
