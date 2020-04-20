global with sharing class LoggerFactory {
	
	// override with your own logger factory
	public static final SLF4AServiceProvider SERVICE_PROVIDER = getServiceProvider();
	private static final ILoggerFactory FACTORY = SERVICE_PROVIDER.getLoggerFactory();

	// =========================================================
	//  GLOBAL METHODS
	// =========================================================

	global static Logger getLogger(String name) {
		return FACTORY.getLogger(name);
	}

	// =========================================================
	//  PRIVATE METHODS
	// =========================================================

	private static SLF4AServiceProvider getServiceProvider() {
		if (SERVICE_PROVIDER == null) {
			SLF4AServiceProvider provider =	(SLF4AServiceProvider) Type.forName(
				[SELECT Service_Provider_Class_Name__c FROM Framework__mdt LIMIT 1].Service_Provider_Class_Name__c
			).newInstance();
			
			provider.initialize();
			return provider;
		}
		return SERVICE_PROVIDER;
	}
}
