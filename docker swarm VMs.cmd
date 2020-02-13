//deploy
az group create --location uksouth --name dockerswarm

az vm create --resource-group dockerswarm --name mgr1 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/DOCKER/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub
az vm create --resource-group dockerswarm --name mgr2 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/DOCKER/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait
az vm create --resource-group dockerswarm --name mgr3 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/DOCKER/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait
az vm create --resource-group dockerswarm --name wrk1 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/DOCKER/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait
az vm create --resource-group dockerswarm --name wrk2 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/DOCKER/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait

//tear down
az group delete --name dockerswarm --yes

