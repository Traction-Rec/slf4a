global with sharing class NullMarkerFactory implements IMarkerFactory {
		global Marker getMarker(String name) {
			return new NullMarker(name);
		}
}
