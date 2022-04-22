local Emitter = Import("ga.corebyte.BetterEmitter"):new()

Emitter:on(
    "test",
    function(data)
        print("test event fired with data: " .. data)
    end
)

Emitter:emit("test", "hello world")