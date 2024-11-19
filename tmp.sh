#!/bin/bash

# Use jq to extract the value for the specific field without echoing
cloudfront_domain_name=$(jq -r '.[] | select(.name=="module_cf_distribution_01_cloudfront_distribution_domain_name") | .value' <<< "$TF_OUTPUTS")

# Print the result
echo "CLOUDFRONT_DISTRIBUTION_DOMAIN_NAME=$cloudfront_domain_name"
