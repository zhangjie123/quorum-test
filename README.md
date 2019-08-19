1. Setup quorum
	url: https://github.com/jpmorganchase/quorum/wiki/Getting-Set-Up
	Make sure geth and bootnode easily invokable.
	copy those binaries to a folder already in PATH, e.g. /usr/local/bin
	An easy way to supplement PATH is to add PATH=$PATH:/path/to/repository/build/bin to your ~/.bashrc or ~/.bash_aliases file.
2. Installing Tessera
url: https://github.com/jpmorganchase/tessera
After tessera installed, Pls add the following lines into your ~/.bashrc or ~/.bash_aliases file
```shell
alias tessera="java -jar /path/to/tessera-app-${version}-app.jar"
export TESSERA_JAR=/path/to/tessera-app-${version}-app.jar
```
3. Clone quorum-test
```shell
git clone https://github.com/zhangjie123/quorum-test
```
4. Preparing node basic data
	4.1 run init.sh
```shell
cd quorum-test
/.init.sh
```
	4.2 Create ETH Account
```shell
geth --datadir data account new
```
