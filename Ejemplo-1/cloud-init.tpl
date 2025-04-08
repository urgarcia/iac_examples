#!/bin/bash

# Si no hay llaves, termina el script
%{ if keys == [] }
exit 0
%{ endif }

# Si hay llaves, configura SSH
mkdir -p /home/ubuntu/.ssh
chmod 700 /home/ubuntu/.ssh
cat <<EOL >> /home/ubuntu/.ssh/authorized_keys
%{ for key in keys ~}
${key}
%{ endfor ~}
EOL
chmod 600 /home/ubuntu/.ssh/authorized_keys
chown -R ubuntu:ubuntu /home/ubuntu/.ssh