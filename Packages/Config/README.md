# Config

Load it: `TypeWriter.Runtime.LoadInternal("Config")`

## Config:new(Path)
Load the Class with the Path

## Config:Parse()
Parse the config

## Config:AddOption(Key, Default)
Add a new option, Has to be called before Config:Parse()

## Config:AddLine()
Adds a empty line, Has to be called before Config:Parse()

## Config:GetOption(Key)
Get a option, Has to be called after Config:Parse()

## Config:SetOption(Key, Value)
Set a option, Has to be called after Config:Parse()
