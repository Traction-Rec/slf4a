@IsTest
private class LoggerFactoryTest {
		@IsTest
		static void getLogger() {
			System.assertNotEquals(null, LoggerFactory.getLogger('test'));
		}
}
