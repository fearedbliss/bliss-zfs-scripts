#!/bin/bash

# Copyright 2013-2017 Jonathan Vasquez <jon@xyinn.org>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
