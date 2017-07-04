#!/bin/bash
set -e

home="/var/lib/postgresql"
env_dir="${home}/env"
run="${env_dir}/run.sh"

echo "$0: Preparing ssh key and config."
mkdir ~/.ssh && chmod 0777 ~/.ssh
cp /run/secrets/id_rsa ~/.ssh/id_rsa && chmod 400 ~/.ssh/id_rsa
cp /ssh-config ~/.ssh/config

echo "$0: Getting ${POSTGRES_POST_GIT}"
git clone "${POSTGRES_POST_GIT}" "${env_dir}"

echo "$0: running ${run}"; . "${run}"
