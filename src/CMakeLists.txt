
if(IMAGEMAGICK_DISABLE)
    message("Magick++ turned off")
else(IMAGEMAGICK_DISABLE)
    find_package(ImageMagick COMPONENTS Magick++)
endif(IMAGEMAGICK_DISABLE)

include_directories(${ImageMagick_INCLUDE_DIRS})

link_directories(${ImageMagick_LIBRARIES})

link_libraries(${ImageMagick_LIBRARIES})

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