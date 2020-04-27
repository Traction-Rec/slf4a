global with sharing class NullMarker implements Marker {

	// =========================================================
	//  CONSTRUCTORS
	// =========================================================
	
	public NullMarker(String name) { }

	// =========================================================
	//  GLOBAL METHODS
	// =========================================================

	global String getName() {
		return 'null marker';
	}

	global void add(Marker reference) {	}
	
	global Boolean remove(Marker reference) { return false;	}
	
	global Boolean contains(Marker other) { return false; }

	global Boolean contains(String name) { return null; }
	
	global override String toString() {
		return 'null marker';
	}
}
