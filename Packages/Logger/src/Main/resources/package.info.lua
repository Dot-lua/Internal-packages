-- See https://github.com/Dot-lua/TypeWriter/wiki/package.info.lua-format for more info

return { InfoVersion = 1, -- Dont touch this

    ID = "logger", -- A unique id 
    Name = "Logger",
    Description = "Logger",
    Version = "1.0.0",

    Author = {
        Developers = {
            "CoreByte"
        },
        Contributors = {}
    },

    Dependencies = {
        Luvit = {},
        Git = {},
        Dua = {}
    },

    Contact = {
        Website = "",
        Source = "",
        Socials = {}
    },

    Entrypoints = {
        Main = "ga.cubic-inc.logger.Test"
    }

}
