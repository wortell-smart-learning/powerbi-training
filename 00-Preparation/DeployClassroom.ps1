$numberOfTrainees = 12
$rg = "devtest"

# Regular:
az account set --subscription 22e46556-ee7f-4060-a7dd-c92391e5f82a
az group deployment create --resource-group $rg --template-file ./armtemplate.json --parameters numberOfNewVMs=$numberOfTrainees --no-wait

# DevTest:
# az account set --subscription a99f3a3e-9ac8-4fb6-8dd8-6842e8da70c3
# az group deployment create --resource-group $rg --template-file ./DeployStage.json --parameters adminPassword=BITrainer.nl --parameters GUID_postfix=$abb --parameters firstAutomaticShutdownDay=2019-04-18 --no-wait --parameters virtualNetworkName=CI4BI-WestEurope-vnet