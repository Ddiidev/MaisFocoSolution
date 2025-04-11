#!/bin/bash

# Lista de containers
containers=("maisfoco-app1" "maisfoco-app2")

# Loop para executar o comando em cada container
for container in "${containers[@]}"; do
    echo "Limpando cache em $container..."
    sudo docker exec -it "$container" bash -c "rm -rf pages/*"
    echo "Cache limpo em $container."
done

echo "Limpeza concluída em todos os containers!"
