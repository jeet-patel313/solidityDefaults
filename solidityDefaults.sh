#!/bin/bash

solidity_auto() {

    # initialize project
    sudo npm init -y

    #  install dependencies
    sudo npm install dotenv 
    sudo npm install hardhat --save-dev 
    sudo npx hardhat 
    sudo npm install --save-dev @nomiclabs/hardhat-ethers ethers @nomiclabs/hardhat-waffle ethereum-waffle chai

    # adding content for plugins
    sed -i '1i require("dotenv").config();' hardhat.config.js
    sed -i '1i require("@nomiclabs/hardhat-waffle");' hardhat.config.js
    
    #  create folders and create scripts
    sudo mkdir contracts/ test/
    sudo mkdir -p scripts/deploy.js
    sudo touch .env

    #  create a .gitignore and add files
    sudo echo ".gitignore" >> .gitignore
    sudo echo ".env" >> .gitignore
    sudo echo "node_modules" >> .gitignore
    sudo echo "solidityDefaults.sh" >> .gitignore
}
solidity_auto