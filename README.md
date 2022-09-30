## Bliss ZFS Scripts
##### Jonathan Vasquez (fearedbliss)

## Description

This is a collection of scripts that I use to manage my zfs setup at home
for both my personal laptop and server. All of the scripts are written in
POSIX sh or Rust. I'm primarily using them on FreeBSD.

Customize the scripts to your needs!

## Scripts

1) check_zfs_pool       - Checks the pools health. If degraded, it sends you an email.
1) get_latest_snapshots - Gets just the latest snapshots.
1) listsnaps 		    - Lists all of the snapshots in the zpool.
1) safe_cleaner		    - Wrapper around **Honeydew**.
1) tank_snapshot        - Wrapper around **zfs_snapshot**.
1) tank_backup          - Wrapper around **Cantaloupe**.
1) zfs_snapshot         - Takes a snapshot of a dataset.
1) zpool_scrub          - Scrubs the pool.

## Pointers

The following scripts have been rewritten in Rust and are now just pointers to where you can get the new versions.

1) clean_snapshots      - Prints out a message to the new Rust-based cleaner: [Honeydew](https://github.com/fearedbliss/Honeydew)
1) zfs_backup           - Prints out a message to the new Rust-based backup replicator: [Cantaloupe](https://github.com/fearedbliss/Cantaloupe)

   **Note:** A label is now mandatory for the Cantaloupe replication format (as it already is for Honeydew).
   If you were using my **`zfs_snapshot`** scripts, this was already occurring, but it is now enforced at the
   replication tool level. Before, the old **`zfs_backup`** Python 3 script had that as an optional argument.
   If you weren't using labels, make sure to rename your snapshots accordingly.

## License

Released under the **[Simplified BSD License](LICENSE)**.

## Requirements

- POSIX sh
- Rust
