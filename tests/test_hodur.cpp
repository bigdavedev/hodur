// Copyright 2023 David Brown <d.brown@bigdavedev.com>
//
// SPDX-License-Identifier: MPL-2.0
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.
#include "hodur/hodur.h"

#include "gtest/gtest.h"

namespace hodur::test
{
TEST(HodurTest, Sum)
{
	EXPECT_EQ(42, sum(40, 2));
}
} // namespace hodur::test
