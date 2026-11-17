# CMake initial-cache for the lightweight Blender -> WASM build on OpenGL (wink).
# Cycles is disabled to minimize .wasm binary size and RAM usage on low-end PCs.

include(${CMAKE_CURRENT_LIST_DIR}/blender-wasm-cache.cmake)

set(WITH_WEBGPU_BACKEND OFF CACHE BOOL "" FORCE)
set(WITH_OPENGL_BACKEND ON CACHE BOOL "" FORCE)
set(WITH_VULKAN_BACKEND OFF CACHE BOOL "" FORCE)

# wink + libepoxy (scripts/build_wink.sh, scripts/build_epoxy.sh).
set(WINK_ROOT "${CMAKE_CURRENT_LIST_DIR}/../wasm-sysroot/wink" CACHE PATH "")
set(WINK_INCLUDE_DIR "${WINK_ROOT}/include" CACHE PATH "")
set(EPOXY_ROOT_DIR "${CMAKE_CURRENT_LIST_DIR}/../wasm-sysroot" CACHE PATH "")

# Keep Cycles disabled for low-spec performance (uses EEVEE/Workbench via GL)
set(WITH_CYCLES OFF CACHE BOOL "" FORCE)
set(WITH_PUGIXML OFF CACHE BOOL "")