#!/bin/bash

# Diretórios e arquivos
DATA=$(date +%Y-%m-%d_%H-%M-%S)
DESTINO="/home/ederoli/asterisk/backup"
ARQUIVO="backup_asterisk_$DATA.tar.gz"

# Caminho dos arquivos de configuração do Asterisk
cd /etc/asterisk || exit

# Compacta os arquivos específicos
tar -czf "$DESTINO/$ARQUIVO" pjsip.conf extensions.conf pjsip_ramais*

echo "Backup criado em: $DESTINO/$ARQUIVO"
