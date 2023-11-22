# Copyright 2023 David Brown <d.brown@bigdavedev.com>
#
# SPDX-License-Identifier: MPL-2.0
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.
set (CMAKE_C_COMPILER gcc)
set (CMAKE_CXX_COMPILER g++)

set (
	COMPILER_FLAGS_LIST
	-Wall
	-Wextra
	-Wpedantic
)

foreach (flag IN LISTS COMPILER_FLAGS_LIST)
	string (APPEND CMAKE_CXX_FLAGS "${flag} ")
endforeach ()
