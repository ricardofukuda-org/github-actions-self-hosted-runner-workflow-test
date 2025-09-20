#!/bin/bash
#export KUBECONFIG='/github/workspace/kubeconfig'
export KUBECONFIG='/github/home/.kube/config'

exec sh -c "$INPUT_RUN"