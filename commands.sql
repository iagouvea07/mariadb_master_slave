--------------- BANCO DE DADOS MASTER ---------------

SHOW MASTER STATUS;

CREATE USER 'replicator'@'%' IDENTIFIED BY '12345';

GRANT REPLICATION SLAVE ON *.* TO'replicator'@'%';

FLUSH PRIVILEGES;

--------------- BANCO DE DADOS SLAVE ---------------

SHOW SLAVE STATUS;

CHANGE MASTER TO
    MASTER_HOST='10.182.0.7',            --ip do banco master
    MASTER_PORT=3306,                    --porta utilizada pelo banco master
    MASTER_USER='replicator',            --usuario para replicar o banco de dados
    MASTER_PASSWORD='12345',             --senha do usuario replicator
    MASTER_LOG_FILE='binlog.000001',     --binlog obtido no comando SHOW MASTER STATUS
    MASTER_LOG_POS=333;                  --position obtida no comando SHOW MASTER STATUS

START SLAVE;

SHOW SLAVE STATUS;
