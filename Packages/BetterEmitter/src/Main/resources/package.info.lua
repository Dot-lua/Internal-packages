-- See https://github.com/Dot-lua/TypeWriter/wiki/package.info.lua-format for more info

return { InfoVersion = 1, -- Dont touch this

    ID = "BetterEmitter", -- A unique id 
    Name = "BetterEmitter",
    Description = "A better emitter",
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
        Source = "https://github.com/SinisterRectus/Discordia/blob/master/libs/utils/Emitter.lua",
        Socials = {}
    },

    Entrypoints = {
        Main = "ga.corebyte.BetterEmitter.Test"
    }

}
