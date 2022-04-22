local Package = {}

function Package.OnInitialize()
    local Logger = Import("ga.cubic-inc.logger.Main"):new(
        {
            Debug = true,
            Out = function (self, Text)
                p(Text)
                print(type(Text))
                print(Text)
            end
        }
    )


    Logger:on("Information", print)

    Logger:Info("test", "test")
    Logger:Warn("test")
    Logger:Error("test")
    Logger:Debug("test")

end

return Package