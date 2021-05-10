RG_NAME=$1
STORAGE_NAME=$2
CONTAINER_NAME=$3
 
# Create storage account
az storage account create --resource-group $RG_NAME --name $STORAGE_NAME --sku Standard_LRS --encryption-services blob
 
# Get storage account key
ACCOUNT_KEY=$(az storage account keys list --resource-group $RG_NAME --account-name $STORAGE_NAME --query '[0].value' -o tsv)
 
# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_NAME --account-key $ACCOUNT_KEY
