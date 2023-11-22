# Copyright 2023 David Brown <d.brown@bigdavedev.com>
#
# SPDX-License-Identifier: MPL-2.0
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.
cmake_minimum_required (VERSION 3.27)

project (
	Hodur
	VERSION 0.1.0
	DESCRIPTION "3D rendering engine"
	HOMEPAGE_URL "https://gitlab.com/davidbrown/hodur"
	LANGUAGES C CXX
)

list (APPEND CMAKE_MODULE_PATH ${Hodur_SOURCE_DIR}/tools/cmake)

option (HODUR_BUILD_EXAMPLES "Build the example applications" ${PROJECT_IS_TOP_LEVEL})
option (HODUR_BUILD_DOCS "Build the documentation" ${PROJECT_IS_TOP_LEVEL})
option (HODUR_ENABLE_TESTING "Build the test suite" ${PROJECT_IS_TOP_LEVEL})
option (HODUR_ENABLE_INSTALL "Enable packaging support" ${PROJECT_IS_TOP_LEVEL})

#set (CMAKE_COMPILE_WARNING_AS_ERROR ${PROJECT_IS_TOP_LEVEL})
set (BUILD_SHARED_LIBS TRUE)

include (StageConfig)
include (GenerateExportHeader)

if (HODUR_BUILD_DOCS)
	add_subdirectory (docs EXCLUDE_FROM_ALL)
endif ()

add_library (hodur)
add_library (Hodur::Hodur ALIAS hodur)

generate_export_header (
	hodur
	EXPORT_FILE_NAME ${Hodur_BINARY_DIR}/hodur/hodur_export.h
	INCLUDE_GUARD_NAME "HODUR_INCLUDE_HODUR_HODUR_EXPORT_H"
)

target_sources (
	hodur

	PUBLIC
	FILE_SET HEADERS
		BASE_DIRS
			include
			${Hodur_BINARY_DIR}
		FILES
			include/hodur/hodur.h
			${Hodur_BINARY_DIR}/hodur/hodur_export.h

	PRIVATE
	src/hodur.cpp
)

target_include_directories (
	hodur

	PUBLIC
	$<BUILD_INTERFACE:${Hodur_SOURCE_DIR}/include>
	$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/install>
)

if (HODUR_ENABLE_TESTING)
	find_package (GTest REQUIRED)
	enable_testing ()
	add_subdirectory (tests)
endif ()

if (HODUR_BUILD_EXAMPLES)
	add_subdirectory (examples)
endif ()

if (HODUR_ENABLE_INSTALL)
	install (
		TARGETS hodur
		FILE_SET HEADERS
		INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/hodur
	)
endif ()

include (CPack)
