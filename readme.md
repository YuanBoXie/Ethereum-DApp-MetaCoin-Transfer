- 本项目基于 truffle unbox webpack 的基础代码修改，增加了一点小功能和中文注释，便于国内感兴趣的开发者入门以太坊应用开发。

# 以太坊应用开发第一课：转账应用的开发

## 项目简介
在本项目中设计实现了一种MetaCoin(简化的代币合约，不符合标准规范但便于初学者学习)其发行总量固定，并均由合约部署者持有，部署这可以通过本应用将MetaCoin进行下发给其他用户，或者其他用户在持有MetaCoin时(默认没有)可以进行再次转账。

## How To Start
1. 安装truffle框架
```
npm install -g truffle
```
2. 本地搭建以太坊私链，基于Ganache、Truffle Develop或者Geth均可。
3. 配置网络：修改truffle-config.js中的network配置，主要是修改port（请查看自己的私链运行的port）
4. 编译和部署合约：
```
truffle compile
truffle migrate --reset
```
Note: 除非特别指定，truffle migrate 命令将从最后完成的迁移脚本开始运行。--reset 选项表示全部重新部署（从头开始运行所有的迁移脚本）。
5. 下载Chrome浏览器和MetaMask钱包（Chrome插件），并在MetaMask新增本地私链的网络，同时导入账户。
6. 在app目录下,先yarn一下安装依赖，然后yarn run dev运行前端应用：
```
yarn 
yarn run dev
```
打开网页访问 http://localhost:8080/ 即可查看本示例项目。

