#!/bin/bash
export KUBECONFIG='/github/workspace/kubeconfig'
cat /github/workspace/kubeconfig
exec sh -c "$INPUT_RUN"