# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/MICRO_RASP/ACT_6/build/_deps/picotool-src")
  file(MAKE_DIRECTORY "C:/MICRO_RASP/ACT_6/build/_deps/picotool-src")
endif()
file(MAKE_DIRECTORY
  "C:/MICRO_RASP/ACT_6/build/_deps/picotool-build"
  "C:/MICRO_RASP/ACT_6/build/_deps"
  "C:/MICRO_RASP/ACT_6/build/pico-sdk/src/rp2040/boot_stage2/picotool/tmp"
  "C:/MICRO_RASP/ACT_6/build/pico-sdk/src/rp2040/boot_stage2/picotool/src/picotoolBuild-stamp"
  "C:/MICRO_RASP/ACT_6/build/pico-sdk/src/rp2040/boot_stage2/picotool/src"
  "C:/MICRO_RASP/ACT_6/build/pico-sdk/src/rp2040/boot_stage2/picotool/src/picotoolBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/MICRO_RASP/ACT_6/build/pico-sdk/src/rp2040/boot_stage2/picotool/src/picotoolBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/MICRO_RASP/ACT_6/build/pico-sdk/src/rp2040/boot_stage2/picotool/src/picotoolBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
