cmake_minimum_required(VERSION 3.14)

project(toml11-free-nonheap-object)

add_executable(toml11-free-nonheap-object
    main.cpp
)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(SetCompilerArchitectureId)
include(FetchContent)


FetchContent_Declare(
    toml
    GIT_REPOSITORY "https://github.com/ToruNiina/toml11.git"
    GIT_TAG        "bcee9f25a22ab4d9a1211ddeab6b4da251c45adf"
)

FetchContent_MakeAvailable(toml)

target_link_libraries(toml11-free-nonheap-object PUBLIC
    toml11::toml11
)

target_compile_options(toml11-free-nonheap-object PUBLIC -Werror)
