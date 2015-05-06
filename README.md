# SQL

São algumas querys que uso para ajudar a melhorar o desempenho de bancos
PostgreSQL:

pgsql_best_hit_ratios.sql
Exibe as tabelas do banco pelo índice de leitura em cache e ainda exibe o
aproveitamento dos índices de cada tabela


pgsql_most_active_tables.sql
Exibe as tabelas do banco pelo nível de utilização, o tamanho da tabela é
exibido em Mb


pgsql_tunning.sql
Exibe o índice de utilização do cache do banco todo


pgsql_tunning_tables.sql
Exibe a utilização das tabelas, índice de leitura em cache, utilização de
índices, buscas sequenciais e tamanho


pgsql_useless_indexes.sql
Exibe os índices menos utilizados de cada tabela


pgsql_worst_hit_ratios.sql
Exibe as tabelas com os piores índices de leitura em cache
