                        PRINCIPAIS PARÂMETROS DE CONFIGURAÇÃO


innodb_flush_log_at_trx_commit               - nivel das transacoes do Mysql em maior durabilidade

binlog_expire_logs_seconds                   - tempo até que o binlog seja apagado

sync_binlog                                  - faz a sincronização com o arquivo binlog

server_id                                    - indica o id do servidor MySQL , onde para todos o valor precisa ser diferente

disable_log_bin                              - desabilita o arquivo binlog do servidor

innodb_buffer_pool_size                      - define o quanto de memória será reservada pelo mariadb/mysql

max_allowed_packet                           - limite de tamanho das transações no banco de dados

bind_address                                 - prefixo de endereços ip que poderão se comunicar com o banco de dados