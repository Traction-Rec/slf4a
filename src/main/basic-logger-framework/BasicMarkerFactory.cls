global with sharing class BasicMarkerFactory implements IMarkerFactory {
		global Marker getMarker(String name) {
			return new BasicMarker(name);
		}
}
