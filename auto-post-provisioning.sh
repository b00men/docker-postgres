#!/bin/bash
set -e

env_dir="/root/env"
run="${env_dir}/run.sh"
git clone "${POSTGRES_POST_GIT}" "${env_dir}"
echo "$0: running ${run}"; . "${run}"