# Install script for directory: /home/marko/workspace/src/stp-master/lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstp.so.2.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstp.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/marko/workspace/src/stp-master/cmake-build-debug/lib/libstp.so.2.1"
    "/home/marko/workspace/src/stp-master/cmake-build-debug/lib/libstp.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstp.so.2.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libstp.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/marko/workspace/install/reldeb-gcc/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/stp" TYPE FILE FILES "/home/marko/workspace/src/stp-master/include/stp/c_interface.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/Globals/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/AST/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/AbsRefineCounterExample/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/Simplifier/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/Printer/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/Parser/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/Interface/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/extlib-abc/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/extlib-constbv/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/STPManager/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/ToSat/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/Sat/cmake_install.cmake")
  include("/home/marko/workspace/src/stp-master/cmake-build-debug/lib/Util/cmake_install.cmake")

endif()

