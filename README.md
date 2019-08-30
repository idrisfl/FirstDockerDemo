# My First Docker Demo Project

This is a sample ASP.NET Core project containing a DockerFile to run the application within a docker container


# Disclaimer

The following commands have been inspired from the Pluralsight course related to docker containers and AKS


# Pre-requisites
.NET Core, Docker, Azure subscription

# Locally build and run in docker container

dotnet publish -c Release 

docker build ./bin/release/netcoreapp2.1/publish --tag aspcontainers -f Dockerfile

docker run -d -p 5000:80 --name asplocal aspcontainers


# Create Azure Container Registry

rgname=AzureWebAppCore20190823054423ResourceGroup
acrname=pscontainerreg
aciname=pscontainers
location=NorthCentralUS

# login to Azure from the CLI (optional if done through Visual Studio)
az login

# use a resource group that has been provisioned in Azure (to be created in the Azure portal if not done)


# create the container registry
We have creaed a container registry called ILOContainerRegistry (login server url is ilocontainerregistry.azurecr.io)

docker login ilocontainerregistry.azurecr.io (UserName and Password of Azure Container Registry (ACR) will be prompted)

docker tag aspcontainers ilocontainerregistry.azurecr.io/aspcontainers

docker push ilocontainerregistry.azurecr.io/aspcontainers


