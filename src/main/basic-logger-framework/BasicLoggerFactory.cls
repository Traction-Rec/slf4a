global with sharing class BasicLoggerFactory implements ILoggerFactory {
		
	private static final LoggingLevel DEFAULT_LOGGING_LEVEL = LoggingLevel.FINEST;

	global BasicLogger getLogger(String name) {
		return new BasicLogger(name, DEFAULT_LOGGING_LEVEL);
	}
}
