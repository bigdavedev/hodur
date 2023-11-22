# Hodur Rendering Engine

This is my hobby/research 3D rendering engine. The primary backend is Vulkan
with other platforms not yet planned.

## Installation

Currently there are no installable packages; building from source is the only
way to obtain the binaries.

## Building

### Prerequisites

In order to build from source the following tools are required:

 * CMake (3.27+)
 * Ninja
 * GCC/Clang (Linux)
 * MSVC 2022 (Windows)
 * Conan (2.0+)

### Compiling

Hodur makes use of CMake presets to keep things simple and reproducable. Most
of the presets are for the CI/CD system but there is a jumping off point for
regular development with the `dev-default` preset. Use it as follows:

```shell
cmake --preset dev-default
cmake --build build/dev --config <Debug|Release>
```

### Testing

To run the test suites simply use either of the following commands (assuming
that the above preset was used):

```shell
cmake --build build/dev --target test --config <Debug|Release>
or
ctest --test-dir build/dev -C <Debug|Release>
```

### Customizing the build

There is a degree of control over what can be built:

| Option                 | Description                    |
|------------------------|--------------------------------|
| `HODUR_BUILD_EXAMPLES` | Build the example applications |
| `HODUR_BUILD_DOCS`     | Build the documentation        |
| `HODUR_ENABLE_TESTING` | Build the test suite           |
| `HODUR_ENABLE_INSTALL` | Enable packaging support       |

The default value for all options depends on whether or not this project is the
top-level project (i.e. `PROJECT_IS_TOP_LEVEL` is `TRUE`).

Note that when `PROJECT_IS_TOP_LEVEL` is `TRUE` that `CMAKE_COMPILE_WARNING_AS_ERROR`
will be enabled as well.