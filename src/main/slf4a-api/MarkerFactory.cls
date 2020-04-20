global with sharing class MarkerFactory {
	
	private static final IMarkerFactory FACTORY = LoggerFactory.SERVICE_PROVIDER.getMarkerFactory();

	global static Marker getMarker(String name) {
		return FACTORY.getMarker(name);
	}
}
