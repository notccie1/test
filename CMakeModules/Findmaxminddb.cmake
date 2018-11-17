# Locate MAXMIND library
# This module defines
# MAXMINDDB_LIBRARY, the name of the library to link against
# MAXMINDDB_FOUND, if false, do not try to link to MAXMIND
# MAXMINDDB_INCLUDE_DIR, where to find MAXMIND.h
#

set( MAXMINDDB_FOUND "NO" )

find_path( MAXMINDDB_INCLUDE_DIR maxminddb.h
  HINTS
  $ENV{MAXMINDDBDIR}
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

#message( "MAXMINDDB_INCLUDE_DIR is ${MAXMINDDB_INCLUDE_DIR}" )

find_library( MAXMINDDB_LIBRARY
  NAMES maxminddb
  HINTS
  $ENV{MAXMINDBDDIR}
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

#message( "MAXMINDDB_LIBRARY is ${MAXMINDDB_LIBRARY}" )

set( MAXMINDDB_FOUND "YES" )

#message( "MAXMINDDB_FOUND is ${MAXMINDDB_FOUND}" )
