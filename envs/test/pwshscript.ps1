##
## To Create a Storage Account and a Container in Azure for remote backend using PowerShell

param(
    [string]$subscriptionId #Subscription ID for the Azure account
)

Connect-AzAccount -TenantId "08db0b8d-b136-4da7-b301-08335fed180f"

# Set Azure context to the desired subscription
Set-AzContext -SubscriptionId $subscriptionId

$resourceGroupName = "test-rg"
$location = "west europe"
$storageAccountName = "tfteststorage000"
$containerName = "tfTestContainer000"

#Creating the Resource Group
New-AzResourceGroup -Name $resourceGroupName -Location $location -SubscriptionId $subscriptionId

#Creating the Storage Account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Location $location `
-Name $storageAccountName `
-Kind StorageV2 `
-SkuName Standard_LRS `
-Verbose 



#Creating the container
$storagecontext = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName
$context = $storagecontext.Context
New-AzStorageContainer -Name $containerName -Context $context


#Output the Storage Account and Container details
write-host "Resource Group Name: $resourceGroupName"
write-host "Location: $location"
write-host "Storage Account Name: $storageAccountName"
write-host "Container Name: $containerName"

