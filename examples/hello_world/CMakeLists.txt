# Copyright 2023 David Brown <d.brown@bigdavedev.com>
#
# SPDX-License-Identifier: MPL-2.0
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.
add_executable (HodurHelloWorld)

target_sources (
	HodurHelloWorld

	PRIVATE
	main.cpp
)

target_link_libraries (
	HodurHelloWorld

	PRIVATE
	Hodur::Hodur
)

if (HODUR_ENABLE_CLANG_TIDY)
	target_enable_clang_tidy (HodurHelloWorld)
endif ()

if (HODUR_ENABLE_INSTALL)
	install (TARGETS HodurHelloWorld)
endif ()
