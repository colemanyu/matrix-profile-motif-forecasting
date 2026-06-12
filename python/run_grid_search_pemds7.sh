#!/bin/bash

# Stop execution if any command fails
set -e

# ================= Grid Search: pemds7 =================
echo "For pemds7..."

# echo "Starting Grid Search: pemds7, include_motif_information=0"
# python grid_search_pemds7.py \
#     --include_covariates True False

# echo "Starting Grid Search: pemds7, include_motif_information=1"
# python grid_search_pemds7.py \
#     --include_covariates True False \
#     --include_motif_information 1 \
#     --no_points_after_motif 1 2 3 5 9 \
#     --do_normalization True False \
#     --include_similarity True False

# echo "Starting Grid Search: pemds7, include_motif_information=2"
# python grid_search_pemds7.py \
#     --include_covariates True False \
#     --include_motif_information 2 \
#     --no_points_after_motif 1 2 3 5 9 \
#     --do_normalization True False \
#     --include_similarity True False

# echo "Starting Grid Search: pemds7, include_motif_information=3, 5"
# python grid_search_pemds7.py \
#     --include_covariates True False \
#     --include_motif_information 3 5 \
#     --no_points_after_motif 9 \
#     --include_similarity True False

# echo "Starting Grid Search: pemds7, include_motif_information=7, 9, 11"
# python grid_search_pemds7.py \
#     --include_covariates True \
#     --include_motif_information 7 9 11 \
#     --no_points_after_motif 9 \
#     --include_similarity True False

# k-NN
# echo "Starting Grid Search: pemds7, include_motif_information=13, 15, 17"
# python grid_search_pemds7.py \
#     --include_covariates True False \
#     --include_motif_information 13 15 17 \
#     --k_motifs 2 3 \
#     --no_points_after_motif 9 \
#     --include_similarity True

# echo "Starting Grid Search: pemds7, include_motif_information=19, 21, 23"
# python grid_search_pemds7.py \
#     --include_covariates True \
#     --include_motif_information 19 21 23 \
#     --k_motifs 2 3 \
#     --no_points_after_motif 9 \
#     --include_similarity True

echo "Starting Grid Search: pemds7, EXCL_ZONE_DENOM sweep..."
python grid_search_pemds7.py \
    --include_covariates True False \
    --include_motif_information 1 \
    --no_points_after_motif 9 \
    --include_similarity True False \
    --EXCL_ZONE_DENOM 4 1 0.1 0.01 0.005 0.003 0.0025 0.002 0.001 0.0005
#   Ratio 0.25 1 10 100 200 300 400 500 1000 2000

echo "Starting Grid Search: pemds7, motif_length (m) sweep..."
python grid_search_pemds7.py \
    --include_covariates True False \
    --include_motif_information 1 \
    --no_points_after_motif 9 \
    --include_similarity True False \
    --motif_length 4 9 18 36 72 144 288 576 1152 2304 4608
# ==========================================================

echo "All grid searches completed successfully."