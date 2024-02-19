includes('compiler.lua')

set_compiler_flags()

add_requires('gtest')

target("rb_tree")
    set_kind("binary")
    add_files('test/*.cpp')
    add_includedirs('include')

    add_packages('gtest')
    set_group('test')