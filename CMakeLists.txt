cmake_minimum_required(VERSION 3.14)

if ( ${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR} )
    message( FATAL_ERROR "In-source builds not allowed. Please make a new directory and run CMake from there. You may need to remove CMakeCache.txt." )
endif()

find_package(SWIG 4.0 COMPONENTS python OPTIONAL_COMPONENTS go)
if(SWIG_FOUND)
  message("SWIG found: ${SWIG_EXECUTABLE}")
  include (UseSWIG)
  if(NOT SWIG_go_FOUND)
    message(FATAL_ERROR "SWIG go bindings cannot be generated")
  endif()
else()
    message(FATAL_ERROR "SWIG NOT FOUND")
endif()

set(PROJECT_NAME librawgo)
project(${PROJECT_NAME})

SET (CMAKE_LIBRARY_OUTPUT_DIRECTORY
        ${CMAKE_BINARY_DIR}
        CACHE PATH
        "Single Directory for all"
    )

SET (CMAKE_RUNTIME_OUTPUT_DIRECTORY
        ${CMAKE_BINARY_DIR}
        CACHE PATH
        "Single Directory for all"
    )

SET (CMAKE_ARCHIVE_OUTPUT_DIRECTORY
        ${CMAKE_BINARY_DIR}
        CACHE PATH
        "Single Directory for all"
    )





# TODO: uncomment if have unit tests
# enable_testing()

find_program( CLANG_TIDY NAMES clang-tidy)
# NOTE: you can add search paths for example `PATHS /usr/local/opt/llvm/bin/`

message("\n--------------------------------\n")
message("PROJECT NAME:\t\t${PROJECT_NAME}")
message("CMAKE_SYSTEM_NAME:\t${CMAKE_SYSTEM_NAME}")
message("CMAKE_C_COMPILER:\t${CMAKE_C_COMPILER}")
message("CMAKE_CXX_COMPILER:\t${CMAKE_CXX_COMPILER}")
message("CMAKE_GENERATOR:\t${CMAKE_GENERATOR}")
message("CMAKE_BUILD_TYPE:\t${CMAKE_BUILD_TYPE}")
message("CMAKE_BINARY_DIR:\t${CMAKE_BINARY_DIR}")
message("CMAKE_MODULE_PATH:\t${CMAKE_MODULE_PATH}")
message("CMAKE_PREFIX_PATH:\t${CMAKE_PREFIX_PATH}")
message("clang-tidy:\t\t${CLANG_TIDY}")
message("\n--------------------------------\n")


set(${PROJECT_NAME}_sources ${CMAKE_SOURCE_DIR}/src/librawgo.i )


set_property(SOURCE ${${PROJECT_NAME}_sources} PROPERTY CPLUSPLUS ON)
swig_add_library(${PROJECT_NAME} TYPE STATIC LANGUAGE go SOURCES ${${PROJECT_NAME}_sources})

# NOTE: this will slow down compilation, but you'll have static code analysis :)
if(CLANG_TIDY)
set_property(
    TARGET ${PROJECT_NAME}
    PROPERTY CXX_CLANG_TIDY "${CLANG_TIDY}")
    endif()

    set_property(TARGET ${PROJECT_NAME} PROPERTY USE_SWIG_DEPENDENCIES TRUE)
    set_property(TARGET ${PROJECT_NAME} PROPERTY SWIG_COMPILE_OPTIONS -go -intgosize 64)
    set_property(TARGET ${PROJECT_NAME} PROPERTY SWIG_USE_TARGET_INCLUDE_DIRECTORIES TRUE)
    target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/include)


