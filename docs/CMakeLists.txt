# Copyright 2023 David Brown <d.brown@bigdavedev.com>
#
# SPDX-License-Identifier: MPL-2.0
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.
find_package (Doxygen REQUIRED)

include (FetchContent)

FetchContent_Declare (
    _doxygen_theme
    URL https://github.com/jothepro/doxygen-awesome-css/archive/refs/tags/v2.2.1.zip
)
FetchContent_MakeAvailable (_doxygen_theme)

set (DOXYGEN_EXTRACT_ALL YES)
set (DOXYGEN_GENERATE_TREEVIEW YES)
set (DOXYGEN_DISABLE_INDEX NO)
set (DOXYGEN_FULL_SIDEBAR NO)
set (DOXYGEN_HTML_COLORSTYLE DARK)
set (DOXYGEN_DOT_IMAGE_FORMAT svg)
set (DOXYGEN_DOT_TRANSPARENT YES)
set (DOXYGEN_USE_MDFILE_AS_MAINPAGE ${Hodur_SOURCE_DIR}/README.md)
set (DOXYGEN_HTML_HEADER ${PROJECT_SOURCE_DIR}/tools/doxygen/header.html)
set (DOXYGEN_HTML_EXTRA_FILES
    ${_doxygen_theme_SOURCE_DIR}/doxygen-awesome-darkmode-toggle.js
    ${_doxygen_theme_SOURCE_DIR}/doxygen-awesome-fragment-copy-button.js
    ${_doxygen_theme_SOURCE_DIR}/doxygen-awesome-paragraph-link.js
    ${_doxygen_theme_SOURCE_DIR}/doxygen-awesome-interactive-toc.js
)
set (DOXYGEN_HTML_EXTRA_STYLESHEET
    ${_doxygen_theme_SOURCE_DIR}/doxygen-awesome.css
    ${_doxygen_theme_SOURCE_DIR}/doxygen-awesome-sidebar-only.css
    ${_doxygen_theme_SOURCE_DIR}/doxygen-awesome-sidebar-only-darkmode-toggle.css
)

doxygen_add_docs (
    docs
    ${Hodur_SOURCE_DIR}/include
    ${Hodur_SOURCE_DIR}/README.md
    ${Hodur_SOURCE_DIR}/LICENSE.md
)
