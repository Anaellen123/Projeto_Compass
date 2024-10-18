DIRECTORIO="/nginx_logs/one_nginx"


SERVICO="nginx"


DATA_HORA=$(date "+%Y-%m-%d %H:%M:%S")

if service $SERVICO status > /dev/null 2>&1; then
    MENSAGEM="$DATA_HORA - O serviço $SERVICO está ONLINE."
    
    echo $MENSAGEM >> "$DIRECTORIO/nginx_online.txt"
else
    MENSAGEM="$DATA_HORA - O serviço $SERVICO está OFFLINE."
    
    echo $MENSAGEM >> "$DIRECTORIO/nginx_offline.txt"
fi
