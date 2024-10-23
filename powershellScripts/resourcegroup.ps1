# PowerShell script to create an Azure Resource Group

# Login to Azure
#Connect-AzAccount

# Variables
$resourceGroupName = "RGroup-151"
$location = "East US"

# Create the Resource Group
New-AzResourceGroup -Name $resourceGroupName -Location $location

Write-Output "Resource group '$resourceGroupName' created in '$location'."

