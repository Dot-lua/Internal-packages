local Logger = Emitter:extend()

local date = os.date
local format = string.format
local stdout = _G.process.stdout.handle


local RED     = 31
local YELLOW  = 33
local GREEN   = 32
local CYAN    = 36

local config = {
	{'[ERROR]  ', RED},
	{'[WARNING]', YELLOW},
	{'[INFO]   ', GREEN},
	{'[DEBUG]  ', CYAN},
}

function Logger:initialize(Settings)
	Settings = Settings or {}
    Settings.Debug = Settings.Debug or false
	Settings.Out = Settings.Out or function (self, Text)
		return stdout:write(Text .. "\n")
	end

    self.DebugMode = Settings.Debug
	self.Out = Settings.Out
end

do -- parse config
	local bold = 1
	for _, v in ipairs(config) do
		v[2] = format('\27[%i;%im%s\27[0m', bold, v[2], v[1])
	end
end


function Logger:Log(level, msg)

	local tag = config[level]
	if not tag then return end

	local d = date("%Y-%m-%d %H:%M:%S")
	self:Out(format('[%s] %s: %s', d, tag[2], msg))

	return msg

end

function Logger:Error(Msg)
	self:Log(1, Msg)
	self:emit("Error", Msg)
end

function Logger:Warn(Msg)
	self:Log(2, Msg)
	self:emit("Warning", Msg)
end

function Logger:Info(Msg)
	self:Log(3, Msg)
	self:emit("Information", Msg)
end

function Logger:Debug(Msg)
	if self.DebugMode == true then
		self:Log(4, Msg)
		self:emit("Debug", Msg)
	end
end

return Logger