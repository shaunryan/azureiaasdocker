#deploy resource group
az group create --location uksouth --name dockerswarm

#create vm's using image
az vm create --resource-group dockerswarm --private-ip-address 10.0.0.10 --name mgr1 --public-ip-address-dns-name mgr1 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/VMIMAGES/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub
az vm create --resource-group dockerswarm --private-ip-address 10.0.0.11 --name mgr2 --public-ip-address-dns-name mgr2 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/VMIMAGES/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait
az vm create --resource-group dockerswarm --private-ip-address 10.0.0.12 --name mgr3 --public-ip-address-dns-name mgr3 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/VMIMAGES/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait
az vm create --resource-group dockerswarm --private-ip-address 10.0.0.15 --name wrk1 --public-ip-address-dns-name wrk1 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/VMIMAGES/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait
az vm create --resource-group dockerswarm --private-ip-address 10.0.0.16 --name wrk2 --public-ip-address-dns-name wrk2 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/VMIMAGES/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait

#mgr1  ssh shaunryan@mgr1.uksouth.cloudapp.azure.com
#mgr2  ssh shaunryan@mgr2.uksouth.cloudapp.azure.com
#mgr3  ssh shaunryan@mgr3.uksouth.cloudapp.azure.com
#wrk1  ssh shaunryan@wrk1.uksouth.cloudapp.azure.com
#wrk2  ssh shaunryan@wrk2.uksouth.cloudapp.azure.com