@IsTest
private class BasicMarkerFactoryTest {
	@IsTest
	static void getMarker() {
		System.assertNotEquals(null, new BasicMarkerFactory().getMarker('test'));
	}
}