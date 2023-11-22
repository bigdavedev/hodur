// Copyright 2023 David Brown <d.brown@bigdavedev.com>
//
// SPDX-License-Identifier: MPL-2.0
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.
#include "hodur/hodur.h"

#include <iostream>

auto main([[maybe_unused]] int argc, [[maybe_unused]] char* argv[]) -> int
{
	// NOLINTNEXTLINE(*-magic-numbers)
	std::cout << hodur::sum(40, 2) << '\n';
	return 0;
}
