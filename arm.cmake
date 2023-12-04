#
# Toolchain
#

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR ARM)
set(TOOLCHAIN_PREFIX arm-none-eabi-)
if (WIN32)
	set(TOOLCHAIN_POSTFIX .exe)
else()
	set(TOOLCHAIN_PREFIX "")
endif()
set(TOOLCHAIN_DIR $ENV{PLAYDATE_ARM_GCC})

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_C_COMPILER ${TOOLCHAIN_DIR}/bin/${TOOLCHAIN_PREFIX}gcc${TOOLCHAIN_POSTFIX})
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_DIR}/bin/${TOOLCHAIN_PREFIX}g++${TOOLCHAIN_POSTFIX})
set(CMAKE_ASM_COMPILER ${CMAKE_C_COMPILER})

set(CMAKE_OBJCOPY ${TOOLCHAIN_DIR}/bin/${TOOLCHAIN_PREFIX}objcopy${TOOLCHAIN_POSTFIX} CACHE INTERNAL "objcopy tool")
set(CMAKE_SIZE_UTIL ${TOOLCHAIN_DIR}/bin/${TOOLCHAIN_PREFIX}size${TOOLCHAIN_POSTFIX} CACHE INTERNAL "size tool")

set(CMAKE_FIND_ROOT_PATH ${TOOLCHAIN_DIR}/bin)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(TOOLCHAIN armgcc)

MESSAGE(STATUS "arm.cmake loaded")