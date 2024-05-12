
package("polyhook")
    set_sourcedir(path.join(os.scriptdir(), "extern/vendor/polyhook"))
    add_deps("cmake")
    on_install("windows", function(package)
        local configs = {}
        table.insert(configs, "-DPOLYHOOK_BUILD_SHARED_LIB=OFF")
        import("package.tools.cmake").install(package, configs, {buildir="build"})
        local libs = {"PolyHook_2", "asmjit", "asmtk", "zydis"}
        for _,link in ipairs(libs) do 
            package:add("links", link)
        end
    end)
package_end()
add_requires("polyhook")
add_requires("sol2")
add_requires("asmjit")
target("il2mod")
    set_kind("shared")
    set_languages("cxx23")
    
    add_files("il2mod/**.cpp")
    add_packages("polyhook")
    add_packages("asmjit")
target_end()