
if(IMAGEMAGICK_DISABLE)
    message("Magick++ turned off")
else(IMAGEMAGICK_DISABLE)
#    find_package(ImageMagick COMPONENTS Magick++)
    find_package(ImageMagick REQUIRED)
endif(IMAGEMAGICK_DISABLE)

include_directories(${IMAGEMAGICK_INCLUDE_DIR})

link_directories(${IMAGEMAGICK_LIBRARY})

link_libraries(${IMAGEMAGICK_LIBRARY})

add_executable(index index.cpp)



macro(print_all_variables)
    message(STATUS "print_all_variables------------------------------------------{")
    get_cmake_property(_variableNames VARIABLES)
    foreach (_variableName ${_variableNames})
        message(STATUS "${_variableName}=${${_variableName}}")
    endforeach()
    message(STATUS "print_all_variables------------------------------------------}")
endmacro()

print_all_variables()