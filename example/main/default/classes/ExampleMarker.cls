global with sharing class ExampleMarker implements slf.Marker {
	// =========================================================
	//  ATTRIBUTES
	// =========================================================

	private String name;
	private Set<String> markers = new Set<String>();

	// =========================================================
	//  CONSTRUCTORS
	// =========================================================
	
	public ExampleMarker() {
		this.name = 'EXAMPLE MARKER';
	}

	// =========================================================
	//  GLOBAL METHODS
	// =========================================================

	global String getName() {
		return name;
	}

	global void add(Marker reference) {
		markers.add(reference.getName());
	}
	
	global Boolean remove(Marker reference) {
		return markers.remove(reference.getName());
	}
	
	global Boolean contains(Marker other) {
		return markers.contains(other.getName());
	}

	global Boolean contains(String name) {
		return markers.contains(name);
	}
	
	global override String toString() {
		if (markers.isEmpty()) {
			return name + ' - ';
		} else {
			return name + ',' + String.join(new List<String> (markers), ',') + ' - ';
		}
	}
}
