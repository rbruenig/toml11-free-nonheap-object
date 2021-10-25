function(git_get_semantic_version _git_version_in _version_major_out _version_minor_out _version_patch_out _version_beta_out)
    string(REGEX MATCH "v([0-9]+)\.([0-9]+)(-beta)?-?([0-9]+)?" SEMANTIC_VERSION ${_git_version_in})

    # major
    SET(${_version_major_out} ${CMAKE_MATCH_1} PARENT_SCOPE)

    # minor
    SET(${_version_minor_out} ${CMAKE_MATCH_2} PARENT_SCOPE)

    # is beta
    if (CMAKE_MATCH_3)
        SET(${_version_beta_out} 1 PARENT_SCOPE)
    else()
        SET(${_version_beta_out} 0 PARENT_SCOPE)
    endif()

    # patch
    if (CMAKE_MATCH_4)
        SET(${_version_patch_out} ${CMAKE_MATCH_4} PARENT_SCOPE)
    else()
        SET(${_version_patch_out} 0 PARENT_SCOPE)
    endif()

endfunction()
