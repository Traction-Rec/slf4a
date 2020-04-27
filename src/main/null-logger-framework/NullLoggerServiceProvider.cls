global with sharing class NullLoggerServiceProvider implements SLF4AServiceProvider {
	
	private ILoggerFactory loggerFactory;
	private IMarkerFactory markerFactory;
	
	global ILoggerFactory getLoggerFactory() {
		return loggerFactory;
	}
	
	global IMarkerFactory getMarkerFactory() {
		return markerFactory;
	}
	
	global void initialize() {
		loggerFactory = new NullLoggerFactory();
		markerFactory = new NullMarkerFactory();
	}
}
