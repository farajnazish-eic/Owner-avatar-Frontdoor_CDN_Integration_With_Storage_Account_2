# Owner-avatar-Frontdoor_CDN_Integration_With_Storage_Account_2

### You will have to provide subscription id in providers.tf file and resource group name at relavant places.
### Then run the below commands:
```
terraform init
terraform plan
terraform apply
```
### After the successful creation of all the resources, you will have to upload an index.html file in the $web container created in the storage account.

### In the end, you will have to hit the endpoint url of frontdoor in the browser.