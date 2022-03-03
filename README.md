# AeriesApi PowerShell Module
#### Aeries(R) SIS is a registered trademark of Aeries Software, Inc.
Any reference to **Aeries**, **Aeries SIS** or **Aeries API** within this project, repository or any associated documentation ALL are referring to the **Aeries Software, Inc. trademarked software Aeries (R) SIS**

# Introduction 
AeriesApi PowerShell Module is meant to simplify integrations utilizing the Aeries API rather than requiring SQL scripts to be maintained.
This project will also standardize ways to utilize the Aeries API for any type of integration such as generating CSV extracts.

# Getting Started
1.	Install the module with `Install-Module -Name AeriesApi`
2.	Dependencies include PowerShell 5.1+ or PowerShell Core 7.1.3+
3.	Utilize the module by putting `Import-Module -Name AeriesApi` at the top of the script file(s)
4.	Check out the [Examples](Examples) folder to see how to get started!

# Build and Test
This module has been tested on both PowerShell 5.1 as well as PowerShell Core 7.1.3
The build process is practically non-existent, simply import the [AeriesApi.psm1](AeriesApi/AeriesApi.psm1) file with `Import-Module -Name ".\AeriesApi\AeriesApi.psm1" -Force`

# Contribute [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)
Contributions are happily welcome and will undergo testing before being committed into the main branch.
For more information on how to contribute, please read [CONTRIBUTING.md](CONTRIBUTING.md)
