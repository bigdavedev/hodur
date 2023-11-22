# Copyright 2023 David Brown <d.brown@bigdavedev.com>
#
# SPDX-License-Identifier: MPL-2.0
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.
add_executable (test_hodur)

target_sources (
	test_hodur

	PRIVATE
	test_hodur.cpp
)

target_link_libraries (
	test_hodur

	PRIVATE
	Hodur::Hodur
	GTest::gtest
	GTest::gtest_main
)

target_compile_options (
	test_hodur

	PRIVATE
	$<$<CXX_COMPILER_ID:Clang>:-Wno-global-constructors>
)

add_test (
	NAME TestHodur
	COMMAND test_hodur
		--gtest_shuffle
)
