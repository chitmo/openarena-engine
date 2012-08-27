#!/bin/sh

rm -rf build/release-linux-x86_64/renderer  build/release-linux-x86_64/client build/release-linux-x86_64/openarena.*

make -j8 release V=1 \
USE_LOCAL_HEADERS=0 \
USE_OPENAL=0 USE_CURL=1 USE_CURL_DLOPEN=0 USE_CODEC_VORBIS=1 USE_MUMBLE=0 USE_FREETYPE=1 \
USE_RENDERER_DLOPEN=0 USE_INTERNAL_ZLIB=0 USE_INTERNAL_JPEG=1 2>&1 | tee build.log

cd build/release-linux-x86_64 && ./openarena.x86_64 +devmap kaos 2>&1 | tee ../../run.log