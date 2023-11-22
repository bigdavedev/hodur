set (HODUR_STAGING_DIR ${CMAKE_CURRENT_BINARY_DIR}/stage)

include (GNUInstallDirs)
if (NOT CMAKE_RUNTIME_OUTPUT_DIRECTORY)
	set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${HODUR_STAGING_DIR}/${CMAKE_INSTALL_BINDIR})
endif ()
if (NOT CMAKE_LIBRARY_OUTPUT_DIRECTORY)
	set (CMAKE_LIBRARY_OUTPUT_DIRECTORY ${HODUR_STAGING_DIR}/${CMAKE_INSTALL_LIBDIR})
endif ()
if (NOT CMAKE_ARCHIVE_OUTPUT_DIRECTORY)
	set (CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${HODUR_STAGING_DIR}/${CMAKE_INSTALL_LIBDIR})
endif ()
