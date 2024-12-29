local M = {}
local PATH_SEP = vim.loop.os_uname().version:match("Windows") and "\\" or "/"

---@param theme_name string
---@return string
local function get_compiled_path(theme_name)
    return table.concat({
        vim.fn.stdpath("state"),
        "nagisa",
        theme_name .. "_compiled.lua",
    }, PATH_SEP)
end

---@param path string
local function ensure_directory_exists(path)
    local dir = path:match("(.*[/\\])")
    if not vim.uv.fs_stat(dir) then
        vim.fn.mkdir(dir, "p")
    end
end

---@param highlights table<string, table>
---@return string
local function serialize_highlights(highlights)
    local lines = {}
    local inspect = vim.inspect
    for hl, spec in pairs(highlights) do
        if next(spec) then
            local serialized_spec = inspect(spec):gsub("%s+", " ")
            table.insert(lines, ('vim.api.nvim_set_hl(0, "%s", %s)'):format(hl, serialized_spec))
        end
    end
    return table.concat(lines, "\n")
end

---@param path string
---@param highlights table<string, table>
local function save_compiled_highlights(path, highlights)
    ensure_directory_exists(path)
    local file = io.open(path, "w")

    if file then
        file:write(serialize_highlights(highlights))
        file:close()
    else
        error("Could not open file for writing: " .. path)
    end
end

---@param theme_name string
---@param opts table
---@param colors Colors
function M.compile(theme_name, opts, colors)
    local themes = require("nagisa.themes")
    local theme_data = themes.setup(colors)[theme_name]

    if not theme_data then
        error(("Theme '%s' not found in themes.lua"):format(theme_name))
    end

    -- Load highlights with theme data and options
    local highlights = require("nagisa.highlights").setup(theme_data(), opts)

    -- Save compiled highlights
    local path = get_compiled_path(theme_name)
    save_compiled_highlights(path, highlights)
end

---@param theme_name string
---@return boolean status
function M.load_compiled(theme_name)
    local f = loadfile(get_compiled_path(theme_name))
    if f then
        f()
        return true
    end
    return false
end

return M
