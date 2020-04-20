global with sharing class BasicLoggerServiceProvider implements SLF4AServiceProvider {
	
	private ILoggerFactory loggerFactory;
	private IMarkerFactory markerFactory;
	
	global ILoggerFactory getLoggerFactory() {
		return loggerFactory;
	}
	
	global IMarkerFactory getMarkerFactory() {
		return markerFactory;
	}
	
	global void initialize() {
		loggerFactory = new BasicLoggerFactory();
		markerFactory = new BasicMarkerFactory();
	}
}
