# docker-postgres
### General docker postgres with auto post provisioning

Provide git repo with post provisioning environment in `POSTGRES_POST_GIT`.
Post provisioning environment must have `run.sh`.
Provide ssh key for access to git repo via docker secrets with `target: id_rsa`.
