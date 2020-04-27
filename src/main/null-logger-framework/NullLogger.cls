global with sharing virtual class NullLogger implements Logger {

	// =========================================================
	//  CONSTRUCTORS
	// =========================================================

	global NullLogger(String name, LoggingLevel targetLevel) {}

	// =========================================================
	//  GLOBAL METHODS
	// =========================================================

	global String getName() {
		return 'null';
	}

	// FINEST
	global Boolean isFinestEnabled() { return false; }
	global void finest(String msg) {}
	global void finest(String msg, Object arg1) {}
	global void finest(String msg, Object arg1, Object arg2) {}
	global void finest(String msg, Object arg1, Object arg2, Object arg3) {}
	global void finest(String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void finest(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void finest(String msg, List<Object> args) {}
	global void finest(String msg, Exception e) {}
	global void finest(Marker marker, String msg) {}
	global void finest(Marker marker, String msg, Object arg1) {}
	global void finest(Marker marker, String msg, Object arg1, Object arg2) {}
	global void finest(Marker marker, String msg, Object arg1, Object arg2, Object arg3) {}
	global void finest(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void finest(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void finest(Marker marker, String msg, List<Object> args) {}
	global void finest(Marker marker, String msg, Exception e) {}

	// FINER
	global Boolean isFinerEnabled() { return false; }
	global void finer(String msg) {}
	global void finer(String msg, Object arg1) {}
	global void finer(String msg, Object arg1, Object arg2) {}
	global void finer(String msg, Object arg1, Object arg2, Object arg3) {}
	global void finer(String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void finer(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void finer(String msg, List<Object> args) {}
	global void finer(String msg, Exception e) {}
	global void finer(Marker marker, String msg) {}
	global void finer(Marker marker, String msg, Object arg1) {}
	global void finer(Marker marker, String msg, Object arg1, Object arg2) {}
	global void finer(Marker marker, String msg, Object arg1, Object arg2, Object arg3) {}
	global void finer(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void finer(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void finer(Marker marker, String msg, List<Object> args) {}
	global void finer(Marker marker, String msg, Exception e) {}

	// FINE
	global Boolean isFineEnabled() { return false; }
	global void fine(String msg) {}
	global void fine(String msg, Object arg1) {}
	global void fine(String msg, Object arg1, Object arg2) {}
	global void fine(String msg, Object arg1, Object arg2, Object arg3) {}
	global void fine(String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void fine(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void fine(String msg, List<Object> args) {}
	global void fine(String msg, Exception e) {}
	global void fine(Marker marker, String msg) {}
	global void fine(Marker marker, String msg, Object arg1) {}
	global void fine(Marker marker, String msg, Object arg1, Object arg2) {}
	global void fine(Marker marker, String msg, Object arg1, Object arg2, Object arg3) {}
	global void fine(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void fine(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void fine(Marker marker, String msg, List<Object> args) {}
	global void fine(Marker marker, String msg, Exception e) {}

	// DEBUG
	global Boolean isDebugEnabled() { return false; }
	global void debug(String msg) {}
	global void debug(String msg, Object arg1) {}
	global void debug(String msg, Object arg1, Object arg2) {}
	global void debug(String msg, Object arg1, Object arg2, Object arg3) {}
	global void debug(String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void debug(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void debug(String msg, List<Object> args) {}
	global void debug(String msg, Exception e) {}
	global void debug(Marker marker, String msg) {}
	global void debug(Marker marker, String msg, Object arg1) {}
	global void debug(Marker marker, String msg, Object arg1, Object arg2) {}
	global void debug(Marker marker, String msg, Object arg1, Object arg2, Object arg3) {}
	global void debug(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void debug(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void debug(Marker marker, String msg, List<Object> args) {}
	global void debug(Marker marker, String msg, Exception e) {}

	// INFO
	global Boolean isInfoEnabled() { return false; }
	global void info(String msg) {}
	global void info(String msg, Object arg1) {}
	global void info(String msg, Object arg1, Object arg2) {}
	global void info(String msg, Object arg1, Object arg2, Object arg3) {}
	global void info(String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void info(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void info(String msg, List<Object> args) {}
	global void info(String msg, Exception e) {}
	global void info(Marker marker, String msg) {}
	global void info(Marker marker, String msg, Object arg1) {}
	global void info(Marker marker, String msg, Object arg1, Object arg2) {}
	global void info(Marker marker, String msg, Object arg1, Object arg2, Object arg3) {}
	global void info(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void info(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void info(Marker marker, String msg, List<Object> args) {}
	global void info(Marker marker, String msg, Exception e) {}

	// WARN
	global Boolean isWarnEnabled() { return false; }
	global void warn(String msg) {}
	global void warn(String msg, Object arg1) {}
	global void warn(String msg, Object arg1, Object arg2) {}
	global void warn(String msg, Object arg1, Object arg2, Object arg3) {}
	global void warn(String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void warn(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void warn(String msg, List<Object> args) {}
	global void warn(String msg, Exception e) {}
	global void warn(Marker marker, String msg) {}
	global void warn(Marker marker, String msg, Object arg1) {}
	global void warn(Marker marker, String msg, Object arg1, Object arg2) {}
	global void warn(Marker marker, String msg, Object arg1, Object arg2, Object arg3) {}
	global void warn(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void warn(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void warn(Marker marker, String msg, List<Object> args) {}
	global void warn(Marker marker, String msg, Exception e) {}

	// ERROR
	global Boolean isErrorEnabled() { return false; }
	global void error(String msg) {}
	global void error(String msg, Object arg1) {}
	global void error(String msg, Object arg1, Object arg2) {}
	global void error(String msg, Object arg1, Object arg2, Object arg3) {}
	global void error(String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void error(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void error(String msg, List<Object> args) {} 
	global void error(String msg, Exception e) {}
	global void error(Marker marker, String msg) {}
	global void error(Marker marker, String msg, Object arg1) {}
	global void error(Marker marker, String msg, Object arg1, Object arg2) {}
	global void error(Marker marker, String msg, Object arg1, Object arg2, Object arg3) {}
	global void error(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {}
	global void error(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {}
	global void error(Marker marker, String msg, List<Object> args) {}
	global void error(Marker marker, String msg, Exception e) {}

	// =========================================================
	//  PROTECTED METHODS
	// =========================================================

	protected virtual void logToSystemDebug(LoggingLevel level, String msg) {
		System.debug(level, msg);
	}
}
