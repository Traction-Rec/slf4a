global with sharing class LoggerFactory {
	
	// override with your own logger factory
	public static final SLF4AServiceProvider SERVICE_PROVIDER = getServiceProvider();
	private static final ILoggerFactory FACTORY = SERVICE_PROVIDER.getLoggerFactory();

	// =========================================================
	//  GLOBAL METHODS
	// =========================================================

	global static Logger getLogger(Type classType) {
		return FACTORY.getLogger(classType.getName());
	}

	global static Logger getLogger(String name) {
		return FACTORY.getLogger(name);
	}

	// =========================================================
	//  PRIVATE METHODS
	// =========================================================

	private static SLF4AServiceProvider getServiceProvider() {
		SLF4AServiceProvider provider;
		Framework__mdt framework;
		
		try {
			// There are some problems with ordering MDT https://success.salesforce.com/issues_view?id=a1p3A0000001BreQAE
			// List<Framework__mdt> frameworks = [SELECT Service_Provider_Class_Name__c, slf__Priority__c FROM Framework__mdt ORDER BY Priority__c DESC LIMIT 1];
			List<Framework__mdt> frameworks = [SELECT Service_Provider_Class_Name__c, slf__Priority__c FROM Framework__mdt ORDER BY Priority__c DESC];
			if (!frameworks.isEmpty()) {
				framework = getHighestPriority(frameworks);
				provider =	(SLF4AServiceProvider) Type.forName(
					framework.Service_Provider_Class_Name__c
				).newInstance();
				provider.initialize();
			} else {
				System.debug(LoggingLevel.WARN, 'could not find any SLF__Framework__mdt records');
			}
		} catch (Exception e) {
			System.debug(LoggingLevel.ERROR, 'error initializing framework: ' + framework);
			System.debug(LoggingLevel.ERROR, 'message: ' + e.getMessage());
			System.debug(LoggingLevel.ERROR, 'cause: ' + e.getCause());
			System.debug(LoggingLevel.ERROR, 'stacktrace: ' + e.getStacktraceString());
		} finally {
			if (provider == null) {
				System.debug(LoggingLevel.WARN, 'falling back to default basic logger framework');
				provider = new BasicLoggerServiceProvider();
			}
		}
		provider.initialize();
		return provider;
	}

	private static Framework__mdt getHighestPriority(List<Framework__mdt> frameworks) {
		Framework__mdt highestPriority = frameworks[0];
		for (Integer i = 1; i < frameworks.size(); i++) {
			if (highestPriority.Priority__c < frameworks[i].Priority__c) {
				highestPriority = frameworks[i];
			}
		}
		return highestPriority;
	}
}
