
image_names=("connnectors_compose-app" "connnectors_compose-estimate")

for image_name in "${image_names[@]}"; do

    docker run -v //var/run/docker.sock:/var/run/docker.sock -v ./trivycache:/root/.cache/trivy aquasec/trivy image "$image_name" --format json > trivy_output_1.json

    node trivy_vulnerability_counts.js
done

exit 0