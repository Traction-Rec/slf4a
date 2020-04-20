@IsTest
private class BasicLoggerFactoryTest {
	@IsTest
	static void getLogger() {
		System.assertNotEquals(null, new BasicLoggerFactory().getLogger('test'));
	}
}