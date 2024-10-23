# Azure Storage Account Creation Script

# Variables
$resourceGroupName = "RGroup-151"
$location = "EastUS"                             
$storageAccountName = "storageacc093421"   
$sku = "Standard_LRS"                  
$kind = "StorageV2"                    

# Login to Azure (uncomment if not logged in)
# Connect-AzAccount

# Check if the resource group exists, and create if it doesn't
if (-not (Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue)) {
    New-AzResourceGroup -Name $resourceGroupName -Location $location
    Write-Host "Resource group '$resourceGroupName' created."
} else {
    Write-Host "Resource group '$resourceGroupName' already exists."
}

# Create the Storage Account
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -SkuName $sku `
                     -Kind $kind `
                     -Location $location

Write-Host "Storage account '$storageAccountName' created in resource group '$resourceGroupName'."
