local Emitter = Class:extend()

local InternalEmitter = Import("ga.corebyte.BetterEmitter.Internal.Emitter")

local function CheckInit(self)
    if self.InternalEmitter == nil then
        self.InternalEmitter = InternalEmitter()
    end
    if self.OnAnyListeners == nil then
        self.OnAnyListeners = {}
    end
end

function Emitter:initialize()
    CheckInit(self)
end

--#region Emit functions
function Emitter:Emit(Name, ...)
    CheckInit(self)
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
    CheckInit(self)
    return self.InternalEmitter:getListenerCount(Name)
end

function Emitter:getListenerCount(Name)
    return self:GetListenerCount(Name)
end
--#endregion

--#region GetListeners functions
function Emitter:GetListeners(Name)
    CheckInit(self)
    return self.InternalEmitter:getListeners(Name)
end

function Emitter:getListeners(Name)
    return self:GetListeners(Name)
end
--#endregion

--#region On functions
function Emitter:On(Name, Fn)
    CheckInit(self)
    return self.InternalEmitter:on(Name, Fn)
end

function Emitter:on(Name, Fn)
    return self:On(Name, Fn)
end
--#endregion

--#region OnSync functions
function Emitter:OnSync(Name, Fn)
    CheckInit(self)
    return self.InternalEmitter:onSync(Name, Fn)
end

function Emitter:onSync(Name, Fn)
    return self:OnSync(Name, Fn)
end
--#endregion

--#region Once functions
function Emitter:Once(Name, Fn)
    CheckInit(self)
    return self.InternalEmitter:once(Name, Fn)
end

function Emitter:once(Name, Fn)
    return self:Once(Name, Fn)
end
--#endregion

--#region OnceSync functions
function Emitter:OnceSync(Name, Fn)
    CheckInit(self)
    return self.InternalEmitter:onceSync(Name, Fn)
end

function Emitter:onceSync(Name, Fn)
    return self:OnceSync(Name, Fn)
end
--#endregion

--#region RemoveAllListeners functions
function Emitter:RemoveAllListeners(Name)
    CheckInit(self)
    return self.InternalEmitter:removeAllListeners(Name)
end

function Emitter:removeAllListeners(Name)
    return self:RemoveAllListeners(Name)
end
--#endregion

--#region RemoveListener functions
function Emitter:RemoveListener(Name, Fn)
    CheckInit(self)
    return self.InternalEmitter:removeListener(Name, Fn)
end

function Emitter:removeListener(Name, Fn)
    return self:RemoveListener(Name, Fn)
end
--#endregion

--#region WaitFor functions
function Emitter:WaitFor(Name, Timeout, Predicate)
    CheckInit(self)
    return self.InternalEmitter:waitFor(Name, Timeout, Predicate)
end

function Emitter:waitFor(Name, Timeout, Predicate)
    return self:WaitFor(Name, Timeout, Predicate)
end
--#endregion

return Emitter