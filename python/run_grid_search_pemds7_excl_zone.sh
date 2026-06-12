#!/bin/bash

# Stop execution if any command fails
set -e

# ================= Grid Search: pemds7 (EXCL_ZONE_DENOM sweep) =================
echo "For pemds7 - EXCL_ZONE_DENOM sweep..."

echo "Starting Grid Search: pemds7, EXCL_ZONE_DENOM sweep..."
python grid_search_pemds7.py \
    --include_covariates True False \
    --include_motif_information 1 \
    --no_points_after_motif 9 \
    --include_similarity True False \
    --EXCL_ZONE_DENOM 4 1 0.1 0.01 0.005 0.003 0.0025 0.002 0.001 0.0005
echo "Completed Grid Search: pemds7, EXCL_ZONE_DENOM sweep."