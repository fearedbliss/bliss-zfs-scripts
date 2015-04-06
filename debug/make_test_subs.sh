#!/bin/bash

# Copyright 2015 Jonathan Vasquez <jvasquez1011@gmail.com>
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Description: This is just for debugging/stress testing the clean_snapshots script

folders=(
    03_10_15_0000
    02_10_15_0000
    01_10_15_0000
    03_10_14_0000
    02_10_14_0000
    01_10_14_0000
    01_01_01_0000
    03_10_11_0000
    02_10_11_0000
    01_10_11_0000
    03_10_10_0000
    02_10_10_0000
    01_10_09_0000
)

target_dir="/mnt/toplevel/tank/snapshots"

for x in ${folders[@]}; do
    final_path=${target_dir}/$x

    mkdir ${final_path}
    btrfs subvol snap -r / ${final_path}/root
    btrfs subvol snap -r / ${final_path}/home
done
