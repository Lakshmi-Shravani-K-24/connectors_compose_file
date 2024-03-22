Steps:
1.Run the following command to analyze the Docker image using Trivy and store the results in a JSON file:

docker run -v //var/run/docker.sock:/var/run/docker.sock -v ./trivycache:/root/.cache/trivy aquasec/trivy image <YOUR_IMAGE_NAME> --format json > trivy_output.json

2.Output from  Step 1 should be stored in a file named trivy_output.json file

3.Extract all types of vulnerabilities count using trivy_vulnerability_count.js file and displays them in console logs.
 
