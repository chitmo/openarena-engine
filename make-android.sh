#!/bin/sh
SDLDIR=../SDL-android
SDLCONFIG=$SDLDIR/project/jni/application/setEnvironment.sh

$SDLCONFIG make -j8 V=1 \
PLATFORM=android ARCH=arm USE_LOCAL_HEADERS=0 USE_GLES=1 \
USE_OPENAL=0 USE_CURL=1 USE_CURL_DLOPEN=0 USE_CODEC_VORBIS=0 USE_MUMBLE=0 USE_FREETYPE=1 \
USE_RENDERER_DLOPEN=0 USE_INTERNAL_ZLIB=0 USE_INTERNAL_JPEG=1 HAVE_VM_COMPILED=1 2>&1 | tee build.log