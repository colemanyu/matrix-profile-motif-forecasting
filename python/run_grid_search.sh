#!/bin/bash

# Stop execution if any command fails
set -e

# ================= Grid Search: electricity =================
echo "For electricity..."

echo "Starting Grid Search: electricity, include_motif_information=0..."
python grid_search_electricity.py \
    --include_covariates True False

# ================= Grid Search: traffic =================
echo "For traffic..."

echo "Starting Grid Search: traffic, include_motif_information=0..."
python grid_search_traffic.py \
    --include_covariates True False

# ================= Grid Search: pemds7 =================
echo "For pemds7..."

echo "Starting Grid Search: pemds7, include_motif_information=0"
python grid_search_pemds7.py \
    --include_covariates True False

# ================= Grid Search: exchange_rate =================
echo "For exchange_rate..."

echo "Starting Grid Search: exchange_rate, include_motif_information=0..."
python grid_search_exchange_rate.py \
    --include_covariates True False

echo "All grid searches completed successfully."