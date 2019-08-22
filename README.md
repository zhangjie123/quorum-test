# Quorum test

## 1. Setup quorum
	url: https://github.com/jpmorganchase/quorum/wiki/Getting-Set-Up
	Make sure geth and bootnode easily invokable.
	copy those binaries to a folder already in PATH, e.g. /usr/local/bin
	An easy way to supplement PATH is to add PATH=$PATH:/path/to/repository/build/bin to your ~/.bashrc or ~/.bash_aliases file.
## 2. Installing Tessera
	url: https://github.com/jpmorganchase/tessera
After tessera installed, Pls add the following lines into your ~/.bashrc or ~/.bash_aliases file
```shell
alias tessera="java -jar /path/to/tessera-app-${version}-app.jar"
export TESSERA_JAR=/path/to/tessera-app-${version}-app.jar
```
## 3. Clone quorum-test
```shell
git clone https://github.com/zhangjie123/quorum-test.git
```
## 4. Preparing node environment configuration data
### 4.1 Run init.sh
```shell
cd quorum-test
./init.sh
```
### 4.2 Create ETH Account
```shell
geth --datadir data account new
```
Please write down the public address that just generated, e.g. <6e072e22d42164f4c647ac6898cfb4263a2bbae4>,
#### Please create a new txt file in root directory. named passwords.txt and put your address passphrase at the first line. If you do not have set any password, Make sure the first is empty.

### 4.3 Generate nodekey
```shell
bootnode -genkey nodekey
mv nodekey data/geth/nodekey
bootnode -nodekey data/geth/nodekey -writeaddress
```

Please write down the output address, e.g. "f55b03d0966216f0b95b124d40589d5a9cba078b46991c62be3288580c5e3a48bb559be226cd8ee5f9d70124a5be549c870ad8c984220b4a6336261c9b74f845"

### 4.4 Generate Tessera Key Pair
```
tessera -keygen -filename "tm"
mv tm.key data/tm.key
mv tm.pub data/tm.pub
cat data/tm.pub
```
Please write down your public key that just output. e.g. "7PSKhCIkLnqPzxuMp3MJ7xGmxC5/0VhmyWQx7BlUTy4="

### 4.5 Get Started Instructions - Send configuration data below to iAPPS
```
1. ETH account public address
2. Node key public address
3. Tessera public key
4. Your server public ip address
```

## 5 Setup enviroment

### 5.1 Set passwords.txt for your eth base account

```
If you have set a passord 
```

### 5.2 Setup permissioned nodes and static nodes
Afert I sent to you "permissioned-nodes.json" and "static-nodes.json"
copy these 2 files to your "data" directory, Do not change any filename

