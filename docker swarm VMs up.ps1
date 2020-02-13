#deploy resource group
az group create --location uksouth --name dockerswarm

#create vm's using image
az vm create --resource-group dockerswarm --name mgr1 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/VMIMAGES/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub
az vm create --resource-group dockerswarm --name mgr2 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/VMIMAGES/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait
az vm create --resource-group dockerswarm --name mgr3 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/VMIMAGES/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait
az vm create --resource-group dockerswarm --name wrk1 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/VMIMAGES/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait
az vm create --resource-group dockerswarm --name wrk2 --vnet-name swarmVNET --subnet swarmSubnet --nsg swarmNSG --image "/subscriptions/662c5f2d-9d48-4caf-8b56-8a7073cf3335/resourceGroups/VMIMAGES/providers/Microsoft.Compute/images/docker" --admin-username shaunryan --ssh-key-value ~/.ssh/id_rsa.pub --no-wait

#mgr1  ssh shaunryan@mgr1.uksouth.cloudapp.azure.com
#mgr2  ssh shaunryan@mgr2.uksouth.cloudapp.azure.com
#mgr3  ssh shaunryan@mgr3.uksouth.cloudapp.azure.com
#wrk1  ssh shaunryan@wrk1.uksouth.cloudapp.azure.com
#wrk2  ssh shaunryan@wrk2.uksouth.cloudapp.azure.com

#swarm unlock key SWMKEY-1-5enq90QUSegR2teuOrp4pJsMHDWdtpQbMeMOGoltoDI