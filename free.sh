#!/bin/bash
#
# Copyright (c) 2023 Red Hat Training <training@redhat.com>
#
# All rights reserved.
# No warranty, explicit or implied, provided.

HOST=lab-ocp-w1.ocp.labtelco.stc
PORT=$(oc get service longload -o jsonpath='{.spec.ports[0].nodePort}')

curl http://${HOST}:${PORT}/unleak

