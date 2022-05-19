## Bliss ZFS Scripts
##### Jonathan Vasquez (fearedbliss)

## Description

This is a collection of scripts that I use to manage my zfs setup at home
for both my personal laptop and server. All of the scripts are writting in
POSIX sh and I'm primarily using them on FreeBSD.

Customize the scripts to your needs!

## Scripts

1) check_zfs_pool       - Checks the pools health. If degraded, it sends you an email.
1) get_latest_snapshots - Gets just the latest snapshots.
1) listsnaps 		   - Lists all of the snapshots in the zpool.
1) safe_cleaner		   - Wrapper around **Honeydew**.
1) tank_snapshot        - Wrapper around **zfs_snapshot**.
1) tank_backup          - Wrapper around **zfs_backup**.
1) zfs_backup           - Simple dataset replication (backup) to another pool.
1) zfs_snapshot         - Takes a snapshot of a dataset.
1) zpool_scrub          - Scrubs the pool.

## Pointers

The following scripts have been rewritten in Rust and are now just pointers to where you can get the new versions.

1) clean_snapshots      - Prints out a message to the new Rust-based cleaner: [Honeydew](https://github.com/fearedbliss/Honeydew)

NOTE: The **zfs_backup** Python 3 script will eventually be rewritten in Rust as well.

## License

Released under the **[Simplified BSD License](LICENSE)**.

## Requirements

- POSIX sh
- Python 3+
- Rust
