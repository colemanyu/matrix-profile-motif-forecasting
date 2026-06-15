#!/bin/bash

# Stop execution if any command fails
set -e

# ================= Grid Search: electricity =================
echo "For electricity..."

# echo "Starting Grid Search: electricity, include_motif_information=0..."
# python grid_search_electricity.py \
#     --include_covariates True False

echo "Starting Grid Search: electricity, EXCL_ZONE_DENOM sweep..."
python grid_search_electricity.py \
	--include_covariates True False \
	--include_motif_information 1 \
	--no_points_after_motif 24 \
	--include_similarity True False \
	--EXCL_ZONE_DENOM 4 1 0.1 0.01 0.005 0.003 0.0025 0.002 0.001 0.0005

# ================= Grid Search: traffic =================
echo "For traffic..."

# echo "Starting Grid Search: traffic, include_motif_information=0..."
# python grid_search_traffic.py \
#     --include_covariates True False

echo "Starting Grid Search: traffic, EXCL_ZONE_DENOM sweep..."
python grid_search_traffic.py \
	--include_covariates True False \
	--include_motif_information 1 \
	--no_points_after_motif 24 \
	--include_similarity True False \
	--EXCL_ZONE_DENOM 4 1 0.1 0.01 0.005 0.003 0.0025 0.002 0.001 0.0005

# ================= Grid Search: pemds7 =================
echo "For pemds7..."

# echo "Starting Grid Search: pemds7, include_motif_information=0"
# python grid_search_pemds7.py \
#     --include_covariates True False

echo "Starting Grid Search: pemds7, EXCL_ZONE_DENOM sweep..."
python grid_search_pemds7.py \
	--include_covariates True False \
	--include_motif_information 1 \
	--no_points_after_motif 9 \
	--include_similarity True False \
	--EXCL_ZONE_DENOM 4 1 0.1 0.01 0.005 0.003 0.0025 0.002 0.001 0.0005

# ================= Grid Search: exchange_rate =================
echo "For exchange_rate..."

# echo "Starting Grid Search: exchange_rate, include_motif_information=0..."
# python grid_search_exchange_rate.py \
#     --include_covariates True False

echo "Starting Grid Search: exchange_rate, EXCL_ZONE_DENOM sweep..."
python grid_search_exchange_rate.py \
	--include_covariates True False \
	--include_motif_information 1 \
	--no_points_after_motif 6 \
	--include_similarity True False \
	--EXCL_ZONE_DENOM 4 1 0.1 0.01 0.005 0.003 0.0025 0.002 0.001 0.0005

echo "All grid searches completed successfully."