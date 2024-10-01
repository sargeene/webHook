Azure Container Registry (ACR) is integrated with Kubernetes for container management.
A dotnet application is deployed using Azure DevOps pipeline, the Docker image is stored, managed and secured by Azure Container Registry (ACR). 
The ACR serves as the image source for our Azure Kubernetes Registry (AKS) cluster. Once the DevOps pipeline pushes the image, AKS pulls the latest version directly from ACR, ensuring that the most recent version of the Dotnet app is deployed.

Azure DevOps pipeline is used for CI/CD, streamlining the software development lifecycle through automated build, test, and release pipelines.
