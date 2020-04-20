# Simple Logging Facade For Apex

The Simple Logging Facade for Apex (SLF4A) intends to be the standard method for logging in Salesforce Apex applications.

Why use SLF4A?

- Quickly swap out logging implementations
	- use the simple logging framework included in slf4a for initial development
	- as the size and complexity of your application grows swap out the simple logging framework for a more advanced one
- Increase portability 
	- build small utility libraries for wide distribution that integrate with the end-user logging framework

The priorities of slf4a are:

- Portablity
	- As a unlocked second generation package it is easy to add slf4a to an org and configure it
	- Applications that use SLF4A are more portable and can be added to other libraries that also use SLF4A
- Simplicity
	- The API must be easy to understand
	- Implementing a logging framework should not be hindered by slf4a
	- The framework comes with a basic logging implementation that works out of the box
- Ease of use
	- slf4a's default configuration is to supply a logger that passes calls through to System.debug
- Efficiency
	- only serialize when necessary

# Packaging

sfdx force:package:create --name slf4a_test --description "Testing SLF4A package" --packagetype Unlocked --targetdevhubusername slf4a-dev-hub

sfdx force:package:version:create --skipvalidation --package slf4a_test --targetdevhubusername slf4a-dev-hub --installationkeybypass

# TODO 
	- implement missing marker methods?
	- basic marker tests
	- finish basic logger tests
	- templating
	- add more advanced framework dependent on SL4FA
	- test out swapping frameworks
	- more reasons why https://stackify.com/slf4j-java/