# How to move from docker compose to kubernetes.

## Convert docker-compose.yaml to kubernetes yaml file.
### https://kubernetes.io/docs/tasks/configure-pod-container/translate-compose-kubernetes/

### kompose convert
### This creates the yaml files for the docker-compose file. There is a lot of other crap in the yaml files that you can clean up. Like some of the meta data.

## Next use k2tf lib to convert yaml files to tf files
### https://github.com/sl1pm4t/k2tf
### brew install k2tf
### k2tf -f test-fixtures/service.yaml -o service.tf