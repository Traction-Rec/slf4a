global with sharing virtual class BasicLogger implements Logger {

	// =========================================================
	// CONSTANTS
	// =========================================================

	private final Map<LoggingLevel, Integer> LOGGING_LEVEL_TO_INT = new Map<LoggingLevel, Integer> {
		LoggingLevel.FINEST => 7,
		LoggingLevel.FINER => 6,
		LoggingLevel.FINE => 5,
		LoggingLevel.DEBUG => 4,
		LoggingLevel.INFO => 3,
		LoggingLevel.WARN => 2,
		LoggingLevel.ERROR => 1,
		LoggingLevel.NONE => 0
	};

	// =========================================================
	//  ATTRIBUTES
	// =========================================================

	private final String name;
	private final Integer targetLevel;

	// =========================================================
	//  CONSTRUCTORS
	// =========================================================

	global BasicLogger(String name, LoggingLevel targetLevel) {
		this.name = name;
		this.targetLevel = LOGGING_LEVEL_TO_INT.get(targetLevel);
	}

	// =========================================================
	//  GLOBAL METHODS
	// =========================================================

	global String getName() {
		return this.name;
	}

	// FINEST
	global Boolean isFinestEnabled() { return this.targetLevel >= LOGGING_LEVEL_TO_INT.get(LoggingLevel.FINEST); }
	global void finest(String msg) { if (isFinestEnabled()) { logToSystemDebug(LoggingLevel.FINEST, msg); } }
	global void finest(String msg, Object arg1) { finest(msg, new List<Object> {arg1}); }
	global void finest(String msg, Object arg1, Object arg2) { finest(msg, new List<Object> {arg1, arg2}); }
	global void finest(String msg, Object arg1, Object arg2, Object arg3) { finest(msg, new List<Object> {arg1, arg2, arg3}); }
	global void finest(String msg, Object arg1, Object arg2, Object arg3, Object arg4) { finest(msg, new List<Object> {arg1, arg2, arg3, arg4 }); }
	global void finest(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { finest(msg, new List<Object> {arg1, arg2, arg3, arg4, arg5}); }
	global void finest(String msg, List<Object> args) { if (isFinestEnabled()) { finest(String.format(msg, args)); } }
	global void finest(String msg, Exception e) { finest(msg); finest(e.getMessage()); finest(e.getStackTraceString()); }
	global void finest(Marker marker, String msg) { if (isFinestEnabled()) { finest(marker + msg); } }
	global void finest(Marker marker, String msg, Object arg1) { if (isFinestEnabled()) { finest(marker + msg, arg1); } }
	global void finest(Marker marker, String msg, Object arg1, Object arg2) { if (isFinestEnabled()) { finest(marker + msg, arg1, arg2); } }
	global void finest(Marker marker, String msg, Object arg1, Object arg2, Object arg3) { if (isFinestEnabled()) { finest(marker + msg, arg1, arg2, arg3); } }
	global void finest(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) { if (isFinestEnabled()) { finest(marker + msg, arg1, arg2, arg3, arg4); } }
	global void finest(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { if (isFinestEnabled()) { finest(marker + msg, arg1, arg2, arg3, arg4, arg5); } }
	global void finest(Marker marker, String msg, List<Object> args) { if (isFinestEnabled()) { finest(marker + msg, args); } }
	global void finest(Marker marker, String msg, Exception e) { if (isFinestEnabled()) { finest(marker + msg, e); } }

	// FINER
	global Boolean isFinerEnabled() { return this.targetLevel >= LOGGING_LEVEL_TO_INT.get(LoggingLevel.FINER); }
	global void finer(String msg) { if (isFinerEnabled()) { logToSystemDebug(LoggingLevel.FINER, msg); } }
	global void finer(String msg, Object arg1) { finer(msg, new List<Object> {arg1}); }
	global void finer(String msg, Object arg1, Object arg2) { finer(msg, new List<Object> {arg1, arg2}); }
	global void finer(String msg, Object arg1, Object arg2, Object arg3) { finer(msg, new List<Object> {arg1, arg2, arg3}); }
	global void finer(String msg, Object arg1, Object arg2, Object arg3, Object arg4) { finer(msg, new List<Object> {arg1, arg2, arg3, arg4 }); }
	global void finer(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { finer(msg, new List<Object> {arg1, arg2, arg3, arg4, arg5}); }
	global void finer(String msg, List<Object> args) { if (isFinerEnabled()) { finer(String.format(msg, args)); } }
	global void finer(String msg, Exception e) { finer(msg); finer(e.getMessage()); finer(e.getStackTraceString()); }
	global void finer(Marker marker, String msg) { if (isFinerEnabled()) { finer(marker + msg); } }
	global void finer(Marker marker, String msg, Object arg1) { if (isFinerEnabled()) { finer(marker + msg, arg1); } }
	global void finer(Marker marker, String msg, Object arg1, Object arg2) { if (isFinerEnabled()) { finer(marker + msg, arg1, arg2); } }
	global void finer(Marker marker, String msg, Object arg1, Object arg2, Object arg3) { if (isFinerEnabled()) { finer(marker + msg, arg1, arg2, arg3); } }
	global void finer(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) { if (isFinerEnabled()) { finer(marker + msg, arg1, arg2, arg3, arg4); } }
	global void finer(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { if (isFinerEnabled()) { finer(marker + msg, arg1, arg2, arg3, arg4, arg5); } }
	global void finer(Marker marker, String msg, List<Object> args) { if (isFinerEnabled()) { finer(marker + msg, args); } }
	global void finer(Marker marker, String msg, Exception e) { if (isFinerEnabled()) { finer(marker + msg, e); } }

	// FINE
	global Boolean isFineEnabled() { return this.targetLevel >= LOGGING_LEVEL_TO_INT.get(LoggingLevel.FINE); }
	global void fine(String msg) { if (isFineEnabled()) { logToSystemDebug(LoggingLevel.FINE, msg); } }
	global void fine(String msg, Object arg1) { fine(msg, new List<Object> {arg1}); }
	global void fine(String msg, Object arg1, Object arg2) { fine(msg, new List<Object> {arg1, arg2}); }
	global void fine(String msg, Object arg1, Object arg2, Object arg3) { fine(msg, new List<Object> {arg1, arg2, arg3}); }
	global void fine(String msg, Object arg1, Object arg2, Object arg3, Object arg4) { fine(msg, new List<Object> {arg1, arg2, arg3, arg4 }); }
	global void fine(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { fine(msg, new List<Object> {arg1, arg2, arg3, arg4, arg5}); }
	global void fine(String msg, List<Object> args) { if (isFineEnabled()) { fine(String.format(msg, args)); } }
	global void fine(String msg, Exception e) { fine(msg); fine(e.getMessage()); fine(e.getStackTraceString()); }
	global void fine(Marker marker, String msg) { if (isFineEnabled()) { fine(marker + msg); } }
	global void fine(Marker marker, String msg, Object arg1) { if (isFineEnabled()) { fine(marker + msg, arg1); } }
	global void fine(Marker marker, String msg, Object arg1, Object arg2) { if (isFineEnabled()) { fine(marker + msg, arg1, arg2); } }
	global void fine(Marker marker, String msg, Object arg1, Object arg2, Object arg3) { if (isFineEnabled()) { fine(marker + msg, arg1, arg2, arg3); } }
	global void fine(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) { if (isFineEnabled()) { fine(marker + msg, arg1, arg2, arg3, arg4); } }
	global void fine(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { if (isFineEnabled()) { fine(marker + msg, arg1, arg2, arg3, arg4, arg5); } }
	global void fine(Marker marker, String msg, List<Object> args) { if (isFineEnabled()) { fine(marker + msg, args); } }
	global void fine(Marker marker, String msg, Exception e) { if (isFineEnabled()) { fine(marker + msg, e); } }

	// DEBUG
	global Boolean isDebugEnabled() { return this.targetLevel >= LOGGING_LEVEL_TO_INT.get(LoggingLevel.DEBUG); }
	global void debug(String msg) { if (isDebugEnabled()) { logToSystemDebug(LoggingLevel.DEBUG, msg); } }
	global void debug(String msg, Object arg1) { debug(msg, new List<Object> {arg1}); }
	global void debug(String msg, Object arg1, Object arg2) { debug(msg, new List<Object> {arg1, arg2}); }
	global void debug(String msg, Object arg1, Object arg2, Object arg3) { debug(msg, new List<Object> {arg1, arg2, arg3}); }
	global void debug(String msg, Object arg1, Object arg2, Object arg3, Object arg4) { debug(msg, new List<Object> {arg1, arg2, arg3, arg4 }); }
	global void debug(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { debug(msg, new List<Object> {arg1, arg2, arg3, arg4, arg5}); }
	global void debug(String msg, List<Object> args) { if (isDebugEnabled()) { debug(String.format(msg, args)); } }
	global void debug(String msg, Exception e) { debug(msg); debug(e.getMessage()); debug(e.getStackTraceString()); }
	global void debug(Marker marker, String msg) { if (isDebugEnabled()) { debug(marker + msg); } }
	global void debug(Marker marker, String msg, Object arg1) { if (isDebugEnabled()) { debug(marker + msg, arg1); } }
	global void debug(Marker marker, String msg, Object arg1, Object arg2) { if (isDebugEnabled()) { debug(marker + msg, arg1, arg2); } }
	global void debug(Marker marker, String msg, Object arg1, Object arg2, Object arg3) { if (isDebugEnabled()) { debug(marker + msg, arg1, arg2, arg3); } }
	global void debug(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) { if (isDebugEnabled()) { debug(marker + msg, arg1, arg2, arg3, arg4); } }
	global void debug(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { if (isDebugEnabled()) { debug(marker + msg, arg1, arg2, arg3, arg4, arg5); } }
	global void debug(Marker marker, String msg, List<Object> args) { if (isDebugEnabled()) { debug(marker + msg, args); } }
	global void debug(Marker marker, String msg, Exception e) { if (isDebugEnabled()) { debug(marker + msg, e); } }

	// INFO
	global Boolean isInfoEnabled() { return this.targetLevel >= LOGGING_LEVEL_TO_INT.get(LoggingLevel.INFO); }
	global void info(String msg) { if (isInfoEnabled()) { logToSystemDebug(LoggingLevel.INFO, msg); } }
	global void info(String msg, Object arg1) { info(msg, new List<Object> {arg1}); }
	global void info(String msg, Object arg1, Object arg2) { info(msg, new List<Object> {arg1, arg2}); }
	global void info(String msg, Object arg1, Object arg2, Object arg3) { info(msg, new List<Object> {arg1, arg2, arg3}); }
	global void info(String msg, Object arg1, Object arg2, Object arg3, Object arg4) { info(msg, new List<Object> {arg1, arg2, arg3, arg4 }); }
	global void info(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { info(msg, new List<Object> {arg1, arg2, arg3, arg4, arg5}); }
	global void info(String msg, List<Object> args) { if (isInfoEnabled()) { info(String.format(msg, args)); } }
	global void info(String msg, Exception e) { info(msg); info(e.getMessage()); info(e.getStackTraceString()); }
	global void info(Marker marker, String msg) { if (isInfoEnabled()) { info(marker + msg); } }
	global void info(Marker marker, String msg, Object arg1) { if (isInfoEnabled()) { info(marker + msg, arg1); } }
	global void info(Marker marker, String msg, Object arg1, Object arg2) { if (isInfoEnabled()) { info(marker + msg, arg1, arg2); } }
	global void info(Marker marker, String msg, Object arg1, Object arg2, Object arg3) { if (isInfoEnabled()) { info(marker + msg, arg1, arg2, arg3); } }
	global void info(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) { if (isInfoEnabled()) { info(marker + msg, arg1, arg2, arg3, arg4); } }
	global void info(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { if (isInfoEnabled()) { info(marker + msg, arg1, arg2, arg3, arg4, arg5); } }
	global void info(Marker marker, String msg, List<Object> args) { if (isInfoEnabled()) { info(marker + msg, args); } }
	global void info(Marker marker, String msg, Exception e) { if (isInfoEnabled()) { info(marker + msg, e); } }

	// WARN
	global Boolean isWarnEnabled() { return this.targetLevel >= LOGGING_LEVEL_TO_INT.get(LoggingLevel.WARN); }
	global void warn(String msg) { if (isWarnEnabled()) { logToSystemDebug(LoggingLevel.WARN, msg); } }
	global void warn(String msg, Object arg1) { warn(msg, new List<Object> {arg1}); }
	global void warn(String msg, Object arg1, Object arg2) { warn(msg, new List<Object> {arg1, arg2}); }
	global void warn(String msg, Object arg1, Object arg2, Object arg3) { warn(msg, new List<Object> {arg1, arg2, arg3}); }
	global void warn(String msg, Object arg1, Object arg2, Object arg3, Object arg4) { warn(msg, new List<Object> {arg1, arg2, arg3, arg4 }); }
	global void warn(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { warn(msg, new List<Object> {arg1, arg2, arg3, arg4, arg5}); }
	global void warn(String msg, List<Object> args) { if (isWarnEnabled()) { warn(String.format(msg, args)); } }
	global void warn(String msg, Exception e) { warn(msg); warn(e.getMessage()); warn(e.getStackTraceString()); }
	global void warn(Marker marker, String msg) { if (isWarnEnabled()) { warn(marker + msg); } }
	global void warn(Marker marker, String msg, Object arg1) { if (isWarnEnabled()) { warn(marker + msg, arg1); } }
	global void warn(Marker marker, String msg, Object arg1, Object arg2) { if (isWarnEnabled()) { warn(marker + msg, arg1, arg2); } }
	global void warn(Marker marker, String msg, Object arg1, Object arg2, Object arg3) { if (isWarnEnabled()) { warn(marker + msg, arg1, arg2, arg3); } }
	global void warn(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) { if (isWarnEnabled()) { warn(marker + msg, arg1, arg2, arg3, arg4); } }
	global void warn(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { if (isWarnEnabled()) { warn(marker + msg, arg1, arg2, arg3, arg4, arg5); } }
	global void warn(Marker marker, String msg, List<Object> args) { if (isWarnEnabled()) { warn(marker + msg, args); } }
	global void warn(Marker marker, String msg, Exception e) { if (isWarnEnabled()) { warn(marker + msg, e); } }

	// ERROR
	global Boolean isErrorEnabled() { return this.targetLevel >= LOGGING_LEVEL_TO_INT.get(LoggingLevel.ERROR); }
	global void error(String msg) { if (isErrorEnabled()) { logToSystemDebug(LoggingLevel.ERROR, msg); } }
	global void error(String msg, Object arg1) { error(msg, new List<Object> {arg1}); }
	global void error(String msg, Object arg1, Object arg2) { error(msg, new List<Object> {arg1, arg2}); }
	global void error(String msg, Object arg1, Object arg2, Object arg3) { error(msg, new List<Object> {arg1, arg2, arg3}); }
	global void error(String msg, Object arg1, Object arg2, Object arg3, Object arg4) { error(msg, new List<Object> {arg1, arg2, arg3, arg4 }); }
	global void error(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { error(msg, new List<Object> {arg1, arg2, arg3, arg4, arg5}); }
	global void error(String msg, List<Object> args) { if (isErrorEnabled()) { error(String.format(msg, args)); } } 
	global void error(String msg, Exception e) { error(msg); error(e.getMessage()); error(e.getStackTraceString()); }
	global void error(Marker marker, String msg) { if (isErrorEnabled()) { error(marker + msg); } }
	global void error(Marker marker, String msg, Object arg1) { if (isErrorEnabled()) { error(marker + msg, arg1); } }
	global void error(Marker marker, String msg, Object arg1, Object arg2) { if (isErrorEnabled()) { error(marker + msg, arg1, arg2); } }
	global void error(Marker marker, String msg, Object arg1, Object arg2, Object arg3) { if (isErrorEnabled()) { error(marker + msg, arg1, arg2, arg3); } }
	global void error(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4) { if (isErrorEnabled()) { error(marker + msg, arg1, arg2, arg3, arg4); } }
	global void error(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) { if (isErrorEnabled()) { error(marker + msg, arg1, arg2, arg3, arg4, arg5); } }
	global void error(Marker marker, String msg, List<Object> args) { if (isErrorEnabled()) { error(marker + msg, args); } }
	global void error(Marker marker, String msg, Exception e) { if (isErrorEnabled()) { error(marker + msg, e); } }

	// =========================================================
	//  PROTECTED METHODS
	// =========================================================

	protected virtual void logToSystemDebug(LoggingLevel level, String msg) {
		System.debug(level, msg);
	}
}
