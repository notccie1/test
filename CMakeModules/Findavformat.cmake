# Locate AVFORMAT library
# This module defines
# AVFORMAT_LIBRARY, the name of the library to link against
# AVFORMAT_FOUND, if false, do not try to link to AVFORMAT
# AVFORMAT_INCLUDE_DIR, where to find avformat.h
#

message("-- looking for libavformat-dev")

set( AVFORMAT_FOUND OFF )

find_path( AVFORMAT_INCLUDE_DIR libavformat/avformat.h
  HINTS
  $ENV{AVFORMATDIR}
  PATH_SUFFIXES include 
  PATHS
  ~/Library/Frameworks
  /Library/Frameworks
  /usr/local/include
  /usr/include
  /sw/include
  /opt/local/include
  /opt/csw/include 
  /opt/include
  /mingw/include
)

# message( "AVFORMAT_INCLUDE_DIR is ${AVFORMAT_INCLUDE_DIR}" )

find_library( AVFORMAT_LIBRARY
  NAMES avformat
  HINTS
  $ENV{AVFORMATDIR}
  PATH_SUFFIXES lib64 lib bin
  PATHS
  /usr/local
  /usr
  /sw
  /opt/local
  /opt/csw
  /opt
  /mingw
)

# message( "AVFORMAT_LIBRARY is ${AVFORMAT_LIBRARY}" )

if(AVFORMAT_INCLUDE_DIR)
    if(AVFORMAT_LIBRARY)
	set( AVFORMAT_FOUND "YES" )
    endif()
endif()


if(AVFORMAT_FOUND)
else()
    message(FATAL_ERROR "ERROR: libavformat-dev not installed")
endif()
