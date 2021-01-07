#!/bin/sh

. ./image-env.sh

# ISSUE: https://github.com/telepresenceio/telepresence/issues/1309
export TELEPRESENCE_USE_OCP_IMAGE=NO

ODO_COMPONENT_NAME=$(yq r .odo/config.yaml ComponentSettings.Name)

telepresence --swap-deployment $(oc get dc --selector=app.kubernetes.io/instance=${ODO_COMPONENT_NAME} -o jsonpath='{.items[*].metadata.name}') --expose 8080
