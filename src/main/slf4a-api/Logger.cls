global interface Logger {
	String getName(); 

	// FINEST
	Boolean isFinestEnabled();
	void finest(String msg);
	void finest(String msg, Object arg1);
	void finest(String msg, Object arg1, Object arg2);
	void finest(String msg, Object arg1, Object arg2, Object arg3);
	void finest(String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void finest(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void finest(String msg, List<Object> args);
	void finest(String msg, Exception e);
	void finest(Marker marker, String msg);
	void finest(Marker marker, String msg, Object arg1);
	void finest(Marker marker, String msg, Object arg1, Object arg2);
	void finest(Marker marker, String msg, Object arg1, Object arg2, Object arg3);
	void finest(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void finest(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void finest(Marker marker, String msg, List<Object> args);
	void finest(Marker marker, String msg, Exception e);

	// FINER
	Boolean isFinerEnabled();
	void finer(String msg);
	void finer(String msg, Object arg1);
	void finer(String msg, Object arg1, Object arg2);
	void finer(String msg, Object arg1, Object arg2, Object arg3);
	void finer(String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void finer(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void finer(String msg, List<Object> args);
	void finer(String msg, Exception e);
	void finer(Marker marker, String msg);
	void finer(Marker marker, String msg, Object arg1);
	void finer(Marker marker, String msg, Object arg1, Object arg2);
	void finer(Marker marker, String msg, Object arg1, Object arg2, Object arg3);
	void finer(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void finer(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void finer(Marker marker, String msg, List<Object> args);
	void finer(Marker marker, String msg, Exception e);

	// FINE
	Boolean isFineEnabled();
	void fine(String msg);
	void fine(String msg, Object arg1);
	void fine(String msg, Object arg1, Object arg2);
	void fine(String msg, Object arg1, Object arg2, Object arg3);
	void fine(String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void fine(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void fine(String msg, List<Object> args);
	void fine(String msg, Exception e);
	void fine(Marker marker, String msg);
	void fine(Marker marker, String msg, Object arg1);
	void fine(Marker marker, String msg, Object arg1, Object arg2);
	void fine(Marker marker, String msg, Object arg1, Object arg2, Object arg3);
	void fine(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void fine(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void fine(Marker marker, String msg, List<Object> args);
	void fine(Marker marker, String msg, Exception e);

	// DEBUG
	Boolean isDebugEnabled();
	void debug(String msg);
	void debug(String msg, Object arg1);
	void debug(String msg, Object arg1, Object arg2);
	void debug(String msg, Object arg1, Object arg2, Object arg3);
	void debug(String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void debug(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void debug(String msg, List<Object> args);
	void debug(String msg, Exception e);
	void debug(Marker marker, String msg);
	void debug(Marker marker, String msg, Object arg1);
	void debug(Marker marker, String msg, Object arg1, Object arg2);
	void debug(Marker marker, String msg, Object arg1, Object arg2, Object arg3);
	void debug(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void debug(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void debug(Marker marker, String msg, List<Object> args);
	void debug(Marker marker, String msg, Exception e);

	// INFO
	Boolean isInfoEnabled();
	void info(String msg);
	void info(String msg, Object arg1);
	void info(String msg, Object arg1, Object arg2);
	void info(String msg, Object arg1, Object arg2, Object arg3);
	void info(String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void info(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void info(String msg, List<Object> args);
	void info(String msg, Exception e);
	void info(Marker marker, String msg);
	void info(Marker marker, String msg, Object arg1);
	void info(Marker marker, String msg, Object arg1, Object arg2);
	void info(Marker marker, String msg, Object arg1, Object arg2, Object arg3);
	void info(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void info(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void info(Marker marker, String msg, List<Object> args);
	void info(Marker marker, String msg, Exception e);
	
	// WARN
	Boolean isWarnEnabled();
	void warn(String msg);
	void warn(String msg, Object arg1);
	void warn(String msg, Object arg1, Object arg2);
	void warn(String msg, Object arg1, Object arg2, Object arg3);
	void warn(String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void warn(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void warn(String msg, List<Object> args);
	void warn(String msg, Exception e);
	void warn(Marker marker, String msg);
	void warn(Marker marker, String msg, Object arg1);
	void warn(Marker marker, String msg, Object arg1, Object arg2);
	void warn(Marker marker, String msg, Object arg1, Object arg2, Object arg3);
	void warn(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void warn(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void warn(Marker marker, String msg, List<Object> args);
	void warn(Marker marker, String msg, Exception e);

	// ERROR
	Boolean isErrorEnabled();
	void error(String msg);
	void error(String msg, Object arg1);
	void error(String msg, Object arg1, Object arg2);
	void error(String msg, Object arg1, Object arg2, Object arg3);
	void error(String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void error(String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void error(String msg, List<Object> args);
	void error(String msg, Exception e);
	void error(Marker marker, String msg);
	void error(Marker marker, String msg, Object arg1);
	void error(Marker marker, String msg, Object arg1, Object arg2);
	void error(Marker marker, String msg, Object arg1, Object arg2, Object arg3);
	void error(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4);
	void error(Marker marker, String msg, Object arg1, Object arg2, Object arg3, Object arg4, Object arg5);
	void error(Marker marker, String msg, List<Object> args);
	void error(Marker marker, String msg, Exception e);
}