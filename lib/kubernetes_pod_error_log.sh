#!/usr/bin/env bash
# Project:     Developer Ops - Cloud Tools
# Description: Compile log information about pod errors.
# Author:      Rye Miller
#
#    ____  ____  ____  ____  ____  ____
#  ||D  |||R  |||K  |||$  |||T  |||R  ||
#  ||___|||___|||___|||___|||___|||___||
#  |/___\|/___\|/___\|/___\|/___\|/___\|
#
# Version: 0.1 [2020-10-27]
# Copyright: Copyright (c) 2020, Rye Miller
NAMESPACE=${1:-""}
log_pattern="grep -iE 'exception|error | grep -v 'Reconcile Error' | tail -n10"

if [ -z "$NAMESPACE" ]; then
    options="--all-namespaces"
else
    options="-n $NAMESPACE"
fi

command="kubectl get pods -o='custom-columns=PODS:.metadata.name,PODS:.metadata.namespace' $options | grep -v PODS"
echo $command
pods=$(eval "$command")

IFS=$'\n'

for item in $pods; do
    pod=$(echo "$item" | awk '{print $1}')
    ns=$(echo "$item" |awk '{print $2')
    command="kubectl logs pod/$pod -n $ns | $log_pattern"

    echo "$command" && eval "$command"
done
