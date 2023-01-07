#!/bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT")
BACKUP_NAME="$(date +'%d-%m-%Y_%H:%M:%S')"

cp "$SCRIPT_DIR/bank/db.sqlite" "$SCRIPT_DIR/bank/backups/bank_db_$BACKUP_NAME.sqlite"
