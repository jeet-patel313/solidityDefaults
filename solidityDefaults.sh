#!/bin/bash

solidity_auto() {

    # remove initials
    sudo rm README.md solidityDefault.png     

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
    sudo mkdir contracts/ test/ scripts/
    sudo touch scripts/deploy.js
    sudo touch ../.env

    #  create a .gitignore and add files
    sudo echo ".gitignore" >> ../.gitignore
    sudo echo ".env" >> ../.gitignore
    sudo echo "node_modules" >> ../.gitignore

    sudo mv `\ls -1 . | grep -v solidityDefaults.sh` ../
    sudo rm -r ../solidityDefaults 
}
solidity_auto