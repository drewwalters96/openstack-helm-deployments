export AIRSHIPCTL_PATH=${AIRSHIPCTL_PATH:-"../airshipctl"}
export OSH_DEPLOYMENTS_PATH=${OSH_DEPLOYMENTS_PATH:-$(pwd)}

# NOTE(drewwalters96): Add openstack-helm-deployments repo to the airship
# config.
airshipctl config set-manifest dummy_manifest \
        --primary \
        --branch master \
        --repo openstack-helm-deployments \
        --url "${OSH_DEPLOYMENTS_PATH}"

airshipctl config set-manifest dummy_manifest \
        --branch master \
        --repo airshipctl \
        --url "${AIRSHIPCTL_PATH}"
