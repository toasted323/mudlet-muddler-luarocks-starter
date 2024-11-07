local base_path = os.getenv("BASE_PATH") or "./"
local lua_version = "5.1"

package.path = table.concat({
    package.path,
    base_path .. "/src/?.lua",
    base_path .. "/src/?/init.lua",
    base_path .. "/lua_modules/share/lua/" .. lua_version .. "/?.lua",
    base_path .. "/lua_modules/share/lua/" .. lua_version .. "/?/init.lua",
    "./tests/?.lua"
}, ";")

package.cpath = table.concat({
    package.cpath,
    base_path .. "/lua_modules/lib/lua/" .. lua_version .. "/?.so"
}, ";")

return {
    _all = {
        verbose = true
    }
}
