local Console = Object:extend()

function Console:Log(MSG, ...)
    return print(
        string.format(
            MSG,
            ...
        )
    )
end

function Console:Log(MSG, ...)
    return Console:Log(MSG, ...)
end

return Console