#!/bin/bash

# Copyright 2015 Jonathan Vasquez <jvasquez1011@gmail.com>
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Description: This is just for debugging/stress testing the clean_snapshots script

folders=(
    2015-03-01-0000-01
    2015-03-01-1200-01
    2015-02-01-0000-01
    2015-02-01-1200-01
    2015-01-01-0000-01
    2015-01-01-1200-01
    2014-03-01-0000-01
    2014-03-01-1200-01
    2014-02-01-0000-01
    2014-02-01-1200-01
    2014-01-01-0000-01
    2014-01-01-1200-01
)

target_dir="/mnt/toplevel/tank/snapshots"

for x in ${folders[@]}; do
    final_path=${target_dir}/$x

    mkdir ${final_path}
    btrfs subvol snap -r / ${final_path}/root
    btrfs subvol snap -r / ${final_path}/home
done
