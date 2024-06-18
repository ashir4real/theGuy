# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_theGuy_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED theGuy_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(theGuy_FOUND FALSE)
  elseif(NOT theGuy_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(theGuy_FOUND FALSE)
  endif()
  return()
endif()
set(_theGuy_CONFIG_INCLUDED TRUE)

# output package information
if(NOT theGuy_FIND_QUIETLY)
  message(STATUS "Found theGuy: 0.0.0 (${theGuy_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'theGuy' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT theGuy_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(theGuy_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${theGuy_DIR}/${_extra}")
endforeach()
