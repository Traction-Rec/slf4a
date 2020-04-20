@IsTest
private class BasicLoggerTest {
    class TestLogger extends BasicLogger {
			final Map<LoggingLevel, List<String>> levelToMessages = new Map<LoggingLevel, List<String>> {
				LoggingLevel.FINEST => new List<String>(),
				LoggingLevel.FINER => new List<String>(),
				LoggingLevel.FINE => new List<String>(),
				LoggingLevel.DEBUG => new List<String>(),
				LoggingLevel.INFO => new List<String>(),
				LoggingLevel.WARN => new List<String>(),
				LoggingLevel.ERROR => new List<String>()
			};

			TestLogger(String name, LoggingLevel targetLevel) {
				super(name, targetLevel);
			}

			protected override void logToSystemDebug(LoggingLevel level, String msg) {
				super.logToSystemDebug(level, msg);
				levelToMessages.get(level).add(msg);
			}
		}

		static TestLogger getLogger(LoggingLevel level) {
			return new TestLogger('test', level);
		}

		@IsTest
		static void test_logging_finest() {
			TestLogger logger = getLogger(LoggingLevel.FINEST);
			logger.finest('msg');
			System.assertEquals(1, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest('msg {0}', 'arg');
			System.assertEquals(2, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest('msg {0} {1}', 'arg', 'arg');
			System.assertEquals(3, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest('msg {0} {1} {2} ', 'arg', 'arg', 'arg');
			System.assertEquals(4, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest('msg {0} {1} {2} {3} ', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(5, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest('msg {0} {1} {2} {3} {4}', 'arg', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(6, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest('msg {0}', new List<Object> { 'args' });
			System.assertEquals(7, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest('msg', new TestException());
			System.assertEquals(10, logger.levelToMessages.get(LoggingLevel.FINEST).size());

			logger = getLogger(LoggingLevel.FINEST);
			BasicMarker marker = new BasicMarker('test');
			logger.finest(marker, 'msg');
			System.assertEquals(1, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest(marker, 'msg {0}', 'arg');
			System.assertEquals(2, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest(marker, 'msg {0} {1}', 'arg', 'arg');
			System.assertEquals(3, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest(marker, 'msg {0} {1} {2} ', 'arg', 'arg', 'arg');
			System.assertEquals(4, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest(marker, 'msg {0} {1} {2} {3} ', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(5, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest(marker, 'msg {0} {1} {2} {3} {4}', 'arg', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(6, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest(marker, 'msg {0}', new List<Object> { 'args' });
			System.assertEquals(7, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			logger.finest(marker, 'msg', new TestException());
			System.assertEquals(10, logger.levelToMessages.get(LoggingLevel.FINEST).size());
			for (String msg : logger.levelToMessages.get(LoggingLevel.FINEST)) {
				System.assert(!msg.contains('{'));
			}
		}

		@IsTest
		static void test_logging_finer() {
			TestLogger logger = getLogger(LoggingLevel.finer);
			logger.finer('msg');
			System.assertEquals(1, logger.levelToMessages.get(LoggingLevel.finer).size());
			logger.finer('msg {0}', 'arg');
			System.assertEquals(2, logger.levelToMessages.get(LoggingLevel.finer).size());
			logger.finer('msg {0} {1}', 'arg', 'arg');
			System.assertEquals(3, logger.levelToMessages.get(LoggingLevel.finer).size());
			logger.finer('msg {0} {1} {2} ', 'arg', 'arg', 'arg');
			System.assertEquals(4, logger.levelToMessages.get(LoggingLevel.finer).size());
			logger.finer('msg {0} {1} {2} {3} ', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(5, logger.levelToMessages.get(LoggingLevel.finer).size());
			logger.finer('msg {0} {1} {2} {3} {4}', 'arg', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(6, logger.levelToMessages.get(LoggingLevel.finer).size());
			logger.finer('msg {0}', new List<Object> { 'args' });
			System.assertEquals(7, logger.levelToMessages.get(LoggingLevel.finer).size());
			logger.finer('msg', new TestException());
			System.assertEquals(10, logger.levelToMessages.get(LoggingLevel.finer).size());
			for (String msg : logger.levelToMessages.get(LoggingLevel.finer)) {
				System.assert(!msg.contains('{'));
			}
		}

		@IsTest
		static void test_logging_fine() {
			TestLogger logger = getLogger(LoggingLevel.fine);
			logger.fine('msg');
			System.assertEquals(1, logger.levelToMessages.get(LoggingLevel.fine).size());
			logger.fine('msg {0}', 'arg');
			System.assertEquals(2, logger.levelToMessages.get(LoggingLevel.fine).size());
			logger.fine('msg {0} {1}', 'arg', 'arg');
			System.assertEquals(3, logger.levelToMessages.get(LoggingLevel.fine).size());
			logger.fine('msg {0} {1} {2} ', 'arg', 'arg', 'arg');
			System.assertEquals(4, logger.levelToMessages.get(LoggingLevel.fine).size());
			logger.fine('msg {0} {1} {2} {3} ', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(5, logger.levelToMessages.get(LoggingLevel.fine).size());
			logger.fine('msg {0} {1} {2} {3} {4}', 'arg', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(6, logger.levelToMessages.get(LoggingLevel.fine).size());
			logger.fine('msg {0}', new List<Object> { 'args' });
			System.assertEquals(7, logger.levelToMessages.get(LoggingLevel.fine).size());
			logger.fine('msg', new TestException());
			System.assertEquals(10, logger.levelToMessages.get(LoggingLevel.fine).size());
			for (String msg : logger.levelToMessages.get(LoggingLevel.fine)) {
				System.assert(!msg.contains('{'));
			}
		}

		@IsTest
		static void test_logging_debug() {
			TestLogger logger = getLogger(LoggingLevel.DEBUG);
			logger.debug('msg');
			System.assertEquals(1, logger.levelToMessages.get(LoggingLevel.DEBUG).size());
			logger.debug('msg {0}', 'arg');
			System.assertEquals(2, logger.levelToMessages.get(LoggingLevel.DEBUG).size());
			logger.debug('msg {0} {1}', 'arg', 'arg');
			System.assertEquals(3, logger.levelToMessages.get(LoggingLevel.DEBUG).size());
			logger.debug('msg {0} {1} {2} ', 'arg', 'arg', 'arg');
			System.assertEquals(4, logger.levelToMessages.get(LoggingLevel.DEBUG).size());
			logger.debug('msg {0} {1} {2} {3} ', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(5, logger.levelToMessages.get(LoggingLevel.DEBUG).size());
			logger.debug('msg {0} {1} {2} {3} {4}', 'arg', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(6, logger.levelToMessages.get(LoggingLevel.DEBUG).size());
			logger.debug('msg {0}', new List<Object> { 'args' });
			System.assertEquals(7, logger.levelToMessages.get(LoggingLevel.DEBUG).size());
			logger.debug('msg', new TestException());
			System.assertEquals(10, logger.levelToMessages.get(LoggingLevel.DEBUG).size());
			for (String msg : logger.levelToMessages.get(LoggingLevel.DEBUG)) {
				System.assert(!msg.contains('{'));
			}
		}

		@IsTest
		static void test_logging_info() {
			TestLogger logger = getLogger(LoggingLevel.INFO);
			logger.info('msg');
			System.assertEquals(1, logger.levelToMessages.get(LoggingLevel.INFO).size());
			logger.info('msg {0}', 'arg');
			System.assertEquals(2, logger.levelToMessages.get(LoggingLevel.INFO).size());
			logger.info('msg {0} {1}', 'arg', 'arg');
			System.assertEquals(3, logger.levelToMessages.get(LoggingLevel.INFO).size());
			logger.info('msg {0} {1} {2} ', 'arg', 'arg', 'arg');
			System.assertEquals(4, logger.levelToMessages.get(LoggingLevel.INFO).size());
			logger.info('msg {0} {1} {2} {3} ', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(5, logger.levelToMessages.get(LoggingLevel.INFO).size());
			logger.info('msg {0} {1} {2} {3} {4}', 'arg', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(6, logger.levelToMessages.get(LoggingLevel.INFO).size());
			logger.info('msg {0}', new List<Object> { 'args' });
			System.assertEquals(7, logger.levelToMessages.get(LoggingLevel.INFO).size());
			logger.info('msg', new TestException());
			System.assertEquals(10, logger.levelToMessages.get(LoggingLevel.INFO).size());
			for (String msg : logger.levelToMessages.get(LoggingLevel.INFO)) {
				System.assert(!msg.contains('{'));
			}
		}

		@IsTest
		static void test_logging_warn() {
			TestLogger logger = getLogger(LoggingLevel.WARN);
			logger.warn('msg');
			System.assertEquals(1, logger.levelToMessages.get(LoggingLevel.WARN).size());
			logger.warn('msg {0}', 'arg');
			System.assertEquals(2, logger.levelToMessages.get(LoggingLevel.WARN).size());
			logger.warn('msg {0} {1}', 'arg', 'arg');
			System.assertEquals(3, logger.levelToMessages.get(LoggingLevel.WARN).size());
			logger.warn('msg {0} {1} {2} ', 'arg', 'arg', 'arg');
			System.assertEquals(4, logger.levelToMessages.get(LoggingLevel.WARN).size());
			logger.warn('msg {0} {1} {2} {3} ', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(5, logger.levelToMessages.get(LoggingLevel.WARN).size());
			logger.warn('msg {0} {1} {2} {3} {4}', 'arg', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(6, logger.levelToMessages.get(LoggingLevel.WARN).size());
			logger.warn('msg {0}', new List<Object> { 'args' });
			System.assertEquals(7, logger.levelToMessages.get(LoggingLevel.WARN).size());
			logger.warn('msg', new TestException());
			System.assertEquals(10, logger.levelToMessages.get(LoggingLevel.WARN).size());
			for (String msg : logger.levelToMessages.get(LoggingLevel.WARN)) {
				System.assert(!msg.contains('{'));
			}
		}
		
		@IsTest
		static void test_logging_error() {
			TestLogger logger = getLogger(LoggingLevel.ERROR);
			logger.error('msg');
			System.assertEquals(1, logger.levelToMessages.get(LoggingLevel.ERROR).size());
			logger.error('msg {0}', 'arg');
			System.assertEquals(2, logger.levelToMessages.get(LoggingLevel.ERROR).size());
			logger.error('msg {0} {1}', 'arg', 'arg');
			System.assertEquals(3, logger.levelToMessages.get(LoggingLevel.ERROR).size());
			logger.error('msg {0} {1} {2} ', 'arg', 'arg', 'arg');
			System.assertEquals(4, logger.levelToMessages.get(LoggingLevel.ERROR).size());
			logger.error('msg {0} {1} {2} {3} ', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(5, logger.levelToMessages.get(LoggingLevel.ERROR).size());
			logger.error('msg {0} {1} {2} {3} {4}', 'arg', 'arg', 'arg', 'arg', 'arg');
			System.assertEquals(6, logger.levelToMessages.get(LoggingLevel.ERROR).size());
			logger.error('msg {0}', new List<Object> { 'args' });
			System.assertEquals(7, logger.levelToMessages.get(LoggingLevel.ERROR).size());
			logger.error('msg', new TestException());
			System.assertEquals(10, logger.levelToMessages.get(LoggingLevel.ERROR).size());
			for (String msg : logger.levelToMessages.get(LoggingLevel.ERROR)) {
				System.assert(!msg.contains('{'));
			}
		}

		@IsTest
		static void test_logging_levels_enabled() {
			TestLogger logger = getLogger(LoggingLevel.FINEST);
			System.assert(logger.isFinestEnabled());
			System.assert(logger.isFinerEnabled());
			System.assert(logger.isFineEnabled());
			System.assert(logger.isDebugEnabled());
			System.assert(logger.isInfoEnabled());
			System.assert(logger.isErrorEnabled());

			logger = getLogger(LoggingLevel.FINER);
			System.assert(!logger.isFinestEnabled());
			System.assert(logger.isFinerEnabled());
			System.assert(logger.isFineEnabled());
			System.assert(logger.isDebugEnabled());
			System.assert(logger.isInfoEnabled());
			System.assert(logger.isErrorEnabled());
			
			logger = getLogger(LoggingLevel.FINE);
			System.assert(!logger.isFinestEnabled());
			System.assert(!logger.isFinerEnabled());
			System.assert(logger.isFineEnabled());
			System.assert(logger.isDebugEnabled());
			System.assert(logger.isInfoEnabled());
			System.assert(logger.isErrorEnabled());

			logger = getLogger(LoggingLevel.DEBUG);
			System.assert(!logger.isFinestEnabled());
			System.assert(!logger.isFinerEnabled());
			System.assert(!logger.isFineEnabled());
			System.assert(logger.isDebugEnabled());
			System.assert(logger.isInfoEnabled());
			System.assert(logger.isErrorEnabled());

			logger = getLogger(LoggingLevel.INFO);
			System.assert(!logger.isFinestEnabled());
			System.assert(!logger.isFinerEnabled());
			System.assert(!logger.isFineEnabled());
			System.assert(!logger.isDebugEnabled());
			System.assert(logger.isInfoEnabled());
			System.assert(logger.isErrorEnabled());

			logger = getLogger(LoggingLevel.ERROR);
			System.assert(!logger.isFinestEnabled());
			System.assert(!logger.isFinerEnabled());
			System.assert(!logger.isFineEnabled());
			System.assert(!logger.isDebugEnabled());
			System.assert(!logger.isInfoEnabled());
			System.assert(logger.isErrorEnabled());
			
			logger = getLogger(LoggingLevel.NONE);
			System.assert(!logger.isFinestEnabled());
			System.assert(!logger.isFinerEnabled());
			System.assert(!logger.isFineEnabled());
			System.assert(!logger.isDebugEnabled());
			System.assert(!logger.isInfoEnabled());
			System.assert(!logger.isErrorEnabled());
		}

		private class TestException extends Exception { }
}
