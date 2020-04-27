global with sharing class NullLoggerFactory implements ILoggerFactory {
		
	private static final LoggingLevel DEFAULT_LOGGING_LEVEL = LoggingLevel.FINEST;

	global NullLogger getLogger(String name) {
		return new NullLogger(name, DEFAULT_LOGGING_LEVEL);
	}
}
