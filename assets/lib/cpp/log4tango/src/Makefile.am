noinst_LTLIBRARIES = liblog4tangointernal.la

INCLUDES = -I../include -I$(top_srcdir)/include

noinst_HEADERS = snprintf.c

liblog4tangointernal_la_SOURCES = \
  Appender.cpp \
  AppenderAttachable.cpp \
  LayoutAppender.cpp \
  FileAppender.cpp \
  RollingFileAppender.cpp \
  OstreamAppender.cpp \
  Layout.cpp \
  PatternLayout.cpp \
  XmlLayout.cpp \
  Logger.cpp \
  LogSeparator.cpp \
  LoggerStream.cpp \
  LoggingEvent.cpp \
  Level.cpp \
  NDC.cpp \
  Filter.cpp \
  TimeStamp.cpp \
  StringUtil.hh \
  StringUtil.cpp \
  DllMain.cpp \
  DummyThreads.cpp \
  MSThreads.cpp \
  PThreads.cpp \
  PortabilityImpl.hh \
  PortabilityImpl.cpp

liblog4tangointernal_la_LDFLAGS = -version-info @LT_VERSION@

lib_LTLIBRARIES = liblog4tango.la
liblog4tango_la_LDFLAGS = -version-info @LT_VERSION@
liblog4tango_la_SOURCES =
