global interface Marker {
	String getName();

	void add(Marker reference);

	Boolean remove(Marker reference);

	Boolean contains(Marker other);

	Boolean contains(String name);
}
