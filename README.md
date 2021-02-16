# BridgeDb Config management

This repository is no longer recommended. Please [use the JSON files instead](https://chem-bla-ics.blogspot.com/2021/02/downloading-all-currently-released.html).

## How to use

### Download scripts and set permissions

```
sudo git clone https://github.com/bridgedb/configManagement.git
sudo chmod +x ./configManagement/*.sh
```

### Download geneproducts (plants, metabolites or metabolic interactions) latest files

```
sudo ./configManagement/downloadDatabases.sh geneproducts bridgefiles latest
sudo ./configManagement/downloadDatabases.sh geneproductsplants bridgefiles latest
sudo ./configManagement/downloadDatabases.sh metabolites bridgefiles latest.zip
sudo ./configManagement/downloadDatabases.sh metabolicinteractions bridgefiles latest.zip

mv gdb.config gdb_2019xxyy.config
sudo ./configManagement/setupDatabases.sh
```
