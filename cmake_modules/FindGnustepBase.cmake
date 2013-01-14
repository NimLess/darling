
find_path(LIBGNUSTEPBASE_INCLUDE_DIR Foundation/NSBundle.h
	PATHS
	/usr/include
	/usr/local/include
	/usr/include/GNUstep
	/usr/local/include/GNUstep
)

find_library(LIBGNUSTEPBASE_LIBRARY
	NAMES libgnustep-base.so
	PATHS /usr/lib /usr/local/lib
)

if (LIBGNUSTEPBASE_INCLUDE_DIR AND LIBGNUSTEPBASE_LIBRARY)
	set(LIBGNUSTEPBASE_FOUND TRUE)
	set(LIBGNUSTEPBASE_LIBRARIES ${LIBGNUSTEPBASE_LIBRARY})
else (LIBGNUSTEPBASE_INCLUDE_DIR AND LIBGNUSTEPBASE_LIBRARY)
	set(LIBGNUSTEPBASE_FOUND FALSE)
endif (LIBGNUSTEPBASE_INCLUDE_DIR AND LIBGNUSTEPBASE_LIBRARY)
