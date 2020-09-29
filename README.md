# Simple Logging Facade For Apex

The Simple Logging Facade for Apex (SLF4A) intends to be the standard method for logging in Salesforce Apex applications.

## Example Usage

	public with sharing class ExampleController {

			/*
			Create a logger from the facade
			The actual logger returned determined by the highest priority Framework custom metadata record
			With no additional configuration the BasicLogger will be returned
			*/
			private static final slf.Logger logger = slf.LoggerFactory.getLogger(ExampleController.class);

			@AuraEnabled
			public static void logSomeStuff() {
					logger.finest('This will be logged at the FINEST level');
					// 17:34:27:153 USER_DEBUG [180]|FINEST|This will be logged at the FINEST level
					
					logger.finest('The account will be serialized here: {0}', new Account(Name='Serialize Me'));
					// 17:34:27:154 USER_DEBUG [180]|FINEST|The account will be serialized here: Account:{Name=Serialize Me}
					
					ExampleMarker marker = new ExampleMarker();
					logger.finest(marker, 'Markers can be used to change the behaviour of the logger');
					// 17:34:27:169 USER_DEBUG [180]|FINEST|EXAMPLE MARKER - Markers can be used to change the behaviour of the logger

					logger.finest(new ExampleMarker(), 'Markers & serialization are supported: {0}', new Account(Name='Serialize Me'));
					// 17:37:17:176 USER_DEBUG [180]|FINEST|EXAMPLE MARKER - Markers & serialization are supported: Account:{Name=Serialize Me}

					logger.finer('log at FINER');
					// 17:34:27:171 USER_DEBUG [180]|FINER|log at FINER

					logger.fine('log at FINE');
					// 17:34:27:171 USER_DEBUG [180]|FINE|log at FINE
					
					logger.debug('log at DEBUG');
					// 17:34:27:172 USER_DEBUG [180]|DEBUG|log at DEBUG

					logger.info('log at INFO');
					// 17:34:27:172 USER_DEBUG [180]|INFO|log at INFO

					logger.info(marker, 'Markers can be added at any level');
					// 17:34:27:173 USER_DEBUG [180]|INFO|EXAMPLE MARKER - Markers can be added at any level

					logger.info('Seralization can happen at any level', new Account(Name='Also serialized!'));
					// 17:34:27:174 USER_DEBUG [180]|INFO|Seralization can happen at any level

					logger.info('Up to {0}, {1}, {2}, {3}, {4}! objects can be serialized', 'one', 2, 'three', '4', 'five');
					// 17:34:27:175 USER_DEBUG [180]|INFO|Up to one, 2, three, 4, five! objects can be serialized

					logger.warn('log at WARN');
					// 17:34:27:175 USER_DEBUG [180]|WARN|log at WARN

					if (logger.isErrorEnabled()) {
							logger.error('log at ERROR');
							// 17:34:27:176 USER_DEBUG [180]|ERROR|log at ERROR
					}

					if (logger.isFinestEnabled()) {
							logger.finest('put more expensive logging operations in if blocks');
							// 17:34:27:176 USER_DEBUG [180]|FINEST|put more expensive logging operations in if blocks

							List<Framework__mdt> frameworks = [SELECT Service_Provider_Class_Name__c, slf__Priority__c FROM Framework__mdt ORDER BY Priority__c DESC];
							logger.finest('for example, running a query only for logging: {0}', frameworks);
							// 17:34:27:181 USER_DEBUG [180]|FINEST|for example, running a query only for logging: slf__Framework__mdt:{slf__Service_Provider_Class_Name__c=BasicLoggerServiceProvider, slf__Priority__c=1, Id=m00540000007025AAA}

							logger.finest('this way the query is only run if somebody will see the log');
							// 17:34:27:182 USER_DEBUG [180]|FINEST|this way the query is only run if somebody will see the log
					}
			}
	}

## Key Features

- A great standalone logging package
- Great performance - objects are only serialized if they are logged
- Declaritively turn off logging and improve performance
- Easy to switch logging implementations
- Familiar API inspired by [SLF4J's](http://www.slf4j.org/)

## How Do I Use It?

Easy! Just install the latest package version & start coding! The latest version ID is 04t5w000003LZTiAAO.

## How do I build my own framework implementation?

Look at the basic-logger-framework implementation for reference. [This repository](https://github.com/recdevs/aul-over-slf4a) is an example of connecting the [Apex Unified Logging](https://github.com/rsoesemann/apex-unified-logging) to SLF4A.

## Packaging

`sfdx force:package:create --name slf4a --description "Simple Logging Framework For Apex" --packagetype Unlocked --targetdevhubusername slf4a-dev-hub@slf4a.com -r ./src`

Don't skip validation or the package will be created without a namespace.

`sfdx force:package:version:create --package slf4a --targetdevhubusername slf4a-dev-hub@slf4a.com --installationkeybypass -w 120`

## TODO 
	- implement missing marker methods?
	- basic marker tests
	- finish basic logger tests
	- templating
	- add more advanced framework dependent on SL4FA
	- more reasons why https://stackify.com/slf4j-java/