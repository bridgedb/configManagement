# BridgeDb Config management

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
