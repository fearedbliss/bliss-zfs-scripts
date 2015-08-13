#!/bin/bash

# Copyright 2015 Jonathan Vasquez <jvasquez1011@gmail.com>
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Description: This is just for debugging/stress testing the clean_snapshots script

DATASET_ROOT="tank/gentoo/root"
DATASET_HOME="tank/gentoo/home"
FAKE_DATE="1990-01-01"
FAKE_HOUR="0000"
FAKE_TAG="TEST"
FAKE="${FAKE_DATE}-${FAKE_HOUR}"

MAX=10

for i in $(seq -w 1 ${MAX}); do
    SNAPSHOT1="${DATASET_ROOT}@${FAKE}-${i}-${FAKE_TAG}"
    SNAPSHOT2="${DATASET_HOME}@${FAKE}-${i}-${FAKE_TAG}"
    echo "Creating snapshot: ${SNAPSHOT1}"
    zfs snapshot ${SNAPSHOT1}
    echo "Creating snapshot: ${SNAPSHOT2}"
    zfs snapshot ${SNAPSHOT2}
done
