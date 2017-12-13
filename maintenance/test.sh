#!/bin/bash
active_containers="$(lxc list -c ns | grep -i running)"
echo $active_containers
findcontainers='\ba-zA-Z{1}a-zA-Z0-9\-{,61}a-zA-Z0-9{1}\b'
if [[ $active_containers =~ $findcontainers ]]; then
    $containers=${BASH_REMATCH[1]}
fi
print $containers