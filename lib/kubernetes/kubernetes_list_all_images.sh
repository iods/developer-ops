#!/usr/bin/env bash
# Project:     Developer Ops - Cloud Tools
# Description: Lists all running container images in an application cluster.
# Author:      Rye Miller
#
#    ____  ____  ____  ____  ____  ____
#  ||D  |||R  |||K  |||$  |||T  |||R  ||
#  ||___|||___|||___|||___|||___|||___||
#  |/___\|/___\|/___\|/___\|/___\|/___\|
#
# Version: 0.1 [2020-10-27]
# Copyright: Copyright (c) 2020, Rye Miller
#
# https://github.com/iods/cloud-tools

kubectl get pods --all-namespaces -o jsonpath="{..image}" \
  | tr -s '[[:space:]]' '\n' \
  | sort \
  uniq -c
