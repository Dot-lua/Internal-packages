local Emitter = Class:extend()

local InternalEmitter = Import("ga.corebyte.BetterEmitter.Internal.Emitter")

function Emitter:initialize()
    self.InternalEmitter = InternalEmitter()
end

--#region Emit functions
function Emitter:Emit(Name, ...)
    return self.InternalEmitter:emit(Name, ...)
end

function Emitter:emit(Name, ...)
    return self:Emit(Name, ...)
end

function Emitter:Fire(Name, ...)
    return self:Emit(Name, ...)
end

function Emitter:fire(Name, ...)
    return self:Emit(Name, ...)
end
--#endregion

--#region GetListenerCount functions
function Emitter:GetListenerCount(Name)
    return self.InternalEmitter:getListenerCount(Name)
end

function Emitter:getListenerCount(Name)
    return self:GetListenerCount(Name)
end
--#endregion

--#region GetListeners functions
function Emitter:GetListeners(Name)
    return self.InternalEmitter:getListeners(Name)
end

function Emitter:getListeners(Name)
    return self:GetListeners(Name)
end
--#endregion

--#region On functions
function Emitter:On(Name, Fn)
    return self.InternalEmitter:on(Name, Fn)
end

function Emitter:on(Name, Fn)
    return self:On(Name, Fn)
end
--#endregion

--#region OnSync functions
function Emitter:OnSync(Name, Fn)
    return self.InternalEmitter:onSync(Name, Fn)
end

function Emitter:onSync(Name, Fn)
    return self:OnSync(Name, Fn)
end
--#endregion

--#region Once functions
function Emitter:Once(Name, Fn)
    return self.InternalEmitter:once(Name, Fn)
end

function Emitter:once(Name, Fn)
    return self:Once(Name, Fn)
end
--#endregion

--#region OnceSync functions
function Emitter:OnceSync(Name, Fn)
    return self.InternalEmitter:onceSync(Name, Fn)
end

function Emitter:onceSync(Name, Fn)
    return self:OnceSync(Name, Fn)
end
--#endregion

--#region RemoveAllListeners functions
function Emitter:RemoveAllListeners(Name)
    return self.InternalEmitter:removeAllListeners(Name)
end

function Emitter:removeAllListeners(Name)
    return self:RemoveAllListeners(Name)
end
--#endregion

--#region RemoveListener functions
function Emitter:RemoveListener(Name, Fn)
    return self.InternalEmitter:removeListener(Name, Fn)
end

function Emitter:removeListener(Name, Fn)
    return self:RemoveListener(Name, Fn)
end
--#endregion

--#region
function Emitter:WaitFor(Name, Timeout, Predicate)
    return self.InternalEmitter:waitFor(Name, Timeout, Predicate)
end

function Emitter:waitFor(Name, Timeout, Predicate)
    return self:WaitFor(Name, Timeout, Predicate)
end
--#endregion

return Emitter