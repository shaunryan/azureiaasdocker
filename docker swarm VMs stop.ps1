az vm stop --resource-group dockerswarm --name mgr1 --no-wait
az vm stop --resource-group dockerswarm --name mgr2 --no-wait
az vm stop --resource-group dockerswarm --name mgr3 --no-wait
az vm stop --resource-group dockerswarm --name wrk1 --no-wait
az vm stop --resource-group dockerswarm --name wrk2 --no-wait

az vm deallocate  --resource-group dockerswarm --name mgr1 --no-wait
az vm deallocate  --resource-group dockerswarm --name mgr2 --no-wait
az vm deallocate  --resource-group dockerswarm --name mgr3 --no-wait
az vm deallocate  --resource-group dockerswarm --name wrk1 --no-wait
az vm deallocate  --resource-group dockerswarm --name wrk2 --no-wait