// Copyright 2023 David Brown <d.brown@bigdavedev.com>
//
// SPDX-License-Identifier: MPL-2.0
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.
#ifndef HODUR_INCLUDE_HODUR_HODUR_H
#define HODUR_INCLUDE_HODUR_HODUR_H

#include "hodur/hodur_export.h"

namespace hodur
{
/// @brief Sum two integers
auto HODUR_EXPORT sum(int lhs, int rhs) -> int;
} // namespace hodur

#endif // HODUR_INCLUDE_HODUR_HODUR_H
