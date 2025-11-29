#!/bin/sh

set -euxo pipefail

if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" != "1" ]]; then
  BUILD_TESTS=ON
else
  BUILD_TESTS=OFF
fi

cmake $SRC_DIR \
    ${CMAKE_ARGS} \
    -G Ninja \
    -B build \
    -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_PANGOLIN_PYTHON=OFF \
    -DBUILD_TESTS=$BUILD_TESTS \
    -DBUILD_TOOLS=OFF

cmake --build build --parallel

if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" != "1" ]]; then
  ctest --test-dir build --output-on-failure
fi

cmake --build build --parallel --target install
# Force change
# Force change
# Force change
