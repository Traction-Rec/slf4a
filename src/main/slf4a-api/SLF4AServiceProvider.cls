global interface SLF4AServiceProvider {
	ILoggerFactory getLoggerFactory();
	IMarkerFactory getMarkerFactory();
	void initialize();
}
