@IsTest
private class LoggerFactoryTest {
		@IsTest
		static void getLogger() {
			System.assert(LoggerFactory.getLogger('test') instanceof BasicLogger);
			System.assert(LoggerFactory.getLogger(LoggerFactoryTest.class) instanceof BasicLogger);
		}
}