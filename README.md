# SQL

S�o algumas querys que uso para ajudar a melhorar o desempenho de bancos
PostgreSQL:

pgsql_best_hit_ratios.sql
Exibe as tabelas do banco pelo �ndice de leitura em cache e ainda exibe o
aproveitamento dos �ndices de cada tabela


pgsql_most_active_tables.sql
Exibe as tabelas do banco pelo n�vel de utiliza��o, o tamanho da tabela �
exibido em Mb


pgsql_tunning.sql
Exibe o �ndice de utiliza��o do cache do banco todo


pgsql_tunning_tables.sql
Exibe a utiliza��o das tabelas, �ndice de leitura em cache, utiliza��o de
�ndices, buscas sequenciais e tamanho


pgsql_useless_indexes.sql
Exibe os �ndices menos utilizados de cada tabela


pgsql_worst_hit_ratios.sql
Exibe as tabelas com os piores �ndices de leitura em cache
