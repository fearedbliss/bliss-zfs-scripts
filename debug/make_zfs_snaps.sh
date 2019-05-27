#!/bin/bash

# Copyright (C) 2013-2019 Jonathan Vasquez <jon@xyinn.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
