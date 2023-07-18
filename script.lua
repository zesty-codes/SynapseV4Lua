local dofile = dofile or do_file or execute_file or executefile or function(v)
	return loadstring(readfile(v))()
end
local isfolder, readfile, isfile, writefile, makefolder, listfiles = isfolder or is_folder, readfile or read_file, isfile or is_file, writefile or write_file or makefile or make_file, makefolder or make_folder or createfolder or create_folder, listfiles or list_files
local delfile = delfile or delete_file or deletefile or removefile or remfile or remove_file or rem_file or del_file
if not isfolder("synv4") then
	makefolder("synv4")
end
if not isfolder("synv4/scripts") then
	makefolder("synv4/scripts")
end
if not isfolder("synv4/autoexecute") then
	makefolder("synv4/autoexecute")
end
if not isfile("synv4/scripts/unreadable.unreadabletxt") then
	writefile("synv4/scripts/unreadable.unreadabletxt", "Personal scripts are gonna come in 1 week.")
end
for i, v in pairs(listfiles("synv4/autoexecute")) do
	print(i,v)
end
local toggled = false
local Synapse = Instance.new("ScreenGui")
game:GetService("RunService").Stepped:Connect(function()
	Synapse.Enabled = toggled
end)
game:GetService("UserInputService").InputBegan:Connect(function(v)
	if v.KeyCode == Enum.KeyCode.Insert then
		toggled = not toggled
	end
end)
local Executor = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("ImageButton")
local TopbarButtons = Instance.new("Frame")
local Execute = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local SourceBoxDown = Instance.new("ScrollingFrame")
local SourceBoxRight = Instance.new("ScrollingFrame")
local SourceBox = Instance.new("TextBox")
local Globals_ = Instance.new("TextLabel")
local Keywords_ = Instance.new("TextLabel")
local Numbers_ = Instance.new("TextLabel")
local RemoteHighlight_ = Instance.new("TextLabel")
local Strings_ = Instance.new("TextLabel")
local Tokens_ = Instance.new("TextLabel")
local Comments_ = Instance.new("TextLabel")
local ScriptHub = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local Close_2 = Instance.new("ImageButton")
local scripts = Instance.new("ScrollingFrame")
local synapse = Instance.new("ScrollingFrame")
local dark_dex_v5lua = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local chat_bypasserlua = Instance.new("TextButton")
local vape_v4lua = Instance.new("TextButton")
local personal = Instance.new("ScrollingFrame")
local dex_v5 = Instance.new("TextButton")
local UIListLayout_2 = Instance.new("UIListLayout")
local chat_bypasser = Instance.new("TextButton")
local chat_bypasser_2 = Instance.new("TextButton")
local TopbarButtons_2 = Instance.new("Frame")
local SynapseScripts = Instance.new("TextButton")
local PersonalScripts = Instance.new("TextButton")
local Execute_2 = Instance.new("TextButton")
local intoEditor = Instance.new("TextButton")
local Console = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local Close_3 = Instance.new("ImageButton")
local console = Instance.new("ScrollingFrame")
local UIListLayout_3 = Instance.new("UIListLayout")

--Properties:

Synapse.Name = "Synapse"
Synapse.Parent = (gethui or get_hui or get_hidden_ui or function(v)
	local folder = Instance.new("Folder", game:GetService("CoreGui"))
	if v and typeof(v) == "Instance" then
		v.Parent = folder
	end
	return folder
end)(synapse)

Executor.Name = "Executor"
Executor.Parent = Synapse
Executor.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Executor.BorderColor3 = Color3.fromRGB(0, 0, 0)
Executor.BorderSizePixel = 0
Executor.Position = UDim2.new(0.356491119, 0, 0.330441654, 0)
Executor.Size = UDim2.new(0, 439, 0, 239)

Title.Name = "Title"
Title.Parent = Executor
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 439, 0, 22)
Title.Font = Enum.Font.RobotoMono
Title.Text = "     Synapse X"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Close.Name = "Close"
Close.Parent = Executor
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.0136674261, 0, 0, 0)
Close.Rotation = 90.000
Close.Size = UDim2.new(0, 20, 0, 22)
Close.Image = "rbxassetid://4536279714"

TopbarButtons.Name = "TopbarButtons"
TopbarButtons.Parent = Executor
TopbarButtons.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TopbarButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopbarButtons.BorderSizePixel = 0
TopbarButtons.Position = UDim2.new(0, 0, 0.0920502096, 0)
TopbarButtons.Size = UDim2.new(0, 439, 0, 19)

Execute.Name = "Execute"
Execute.Parent = TopbarButtons
Execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Execute.BackgroundTransparency = 1.000
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.0136674261, 0, 0, 0)
Execute.Size = UDim2.new(0, 51, 0, 19)
Execute.Font = Enum.Font.RobotoMono
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 14.000

Clear.Name = "Clear"
Clear.Parent = TopbarButtons
Clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clear.BackgroundTransparency = 1.000
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.136674255, 0, 0, 0)
Clear.Size = UDim2.new(0, 44, 0, 19)
Clear.Font = Enum.Font.RobotoMono
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 14.000

SourceBoxDown.Name = "SourceBoxDown"
SourceBoxDown.Parent = Executor
SourceBoxDown.Active = true
SourceBoxDown.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SourceBoxDown.BorderColor3 = Color3.fromRGB(0, 0, 0)
SourceBoxDown.BorderSizePixel = 0
SourceBoxDown.Position = UDim2.new(0.0136674261, 0, 0.196652725, 0)
SourceBoxDown.Size = UDim2.new(0, 427, 0, 185)
SourceBoxDown.BottomImage = ""
SourceBoxDown.CanvasSize = UDim2.new(0, 0, 0, 0)
SourceBoxDown.TopImage = ""

SourceBoxRight.Name = "SourceBoxRight"
SourceBoxRight.Parent = SourceBoxDown
SourceBoxRight.Active = true
SourceBoxRight.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SourceBoxRight.BorderColor3 = Color3.fromRGB(0, 0, 0)
SourceBoxRight.BorderSizePixel = 0
SourceBoxRight.Size = UDim2.new(0, 432, 0, 185)
SourceBoxRight.Visible = false
SourceBoxRight.ZIndex = 3
SourceBoxRight.BottomImage = ""
SourceBoxRight.CanvasSize = UDim2.new(0, 0, 0, 0)
SourceBoxRight.TopImage = ""

SourceBox.Name = "SourceBox"
SourceBox.Parent = SourceBoxDown
SourceBox.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
SourceBox.BackgroundTransparency = 0.500
SourceBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
SourceBox.BorderSizePixel = 0
SourceBox.Position = UDim2.new(0, 0, -0.00101813243, 0)
SourceBox.Size = UDim2.new(0, 9999962, 0, 9999962)
SourceBox.ClearTextOnFocus = false
SourceBox.Font = Enum.Font.RobotoMono
SourceBox.MultiLine = true
SourceBox.Text = ""
SourceBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SourceBox.TextSize = 14.000
SourceBox.TextWrapped = true
SourceBox.TextXAlignment = Enum.TextXAlignment.Left
SourceBox.TextYAlignment = Enum.TextYAlignment.Top

Globals_.Name = "Globals_"
Globals_.Parent = SourceBox
Globals_.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Globals_.BackgroundTransparency = 1.000
Globals_.BorderColor3 = Color3.fromRGB(33, 33, 33)
Globals_.BorderSizePixel = 0
Globals_.Size = UDim2.new(1, 0, 1, 0)
Globals_.ZIndex = 5
Globals_.Font = Enum.Font.RobotoMono
Globals_.Text = ""
Globals_.TextColor3 = Color3.fromRGB(255, 255, 255)
Globals_.TextSize = 14.000
Globals_.TextWrapped = true
Globals_.TextXAlignment = Enum.TextXAlignment.Left
Globals_.TextYAlignment = Enum.TextYAlignment.Top

Keywords_.Name = "Keywords_"
Keywords_.Parent = SourceBox
Keywords_.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Keywords_.BackgroundTransparency = 1.000
Keywords_.BorderColor3 = Color3.fromRGB(33, 33, 33)
Keywords_.BorderSizePixel = 0
Keywords_.Size = UDim2.new(1, 0, 1, 0)
Keywords_.ZIndex = 5
Keywords_.Font = Enum.Font.RobotoMono
Keywords_.Text = ""
Keywords_.TextColor3 = Color3.fromRGB(255, 106, 0)
Keywords_.TextSize = 14.000
Keywords_.TextWrapped = true
Keywords_.TextXAlignment = Enum.TextXAlignment.Left
Keywords_.TextYAlignment = Enum.TextYAlignment.Top

Numbers_.Name = "Numbers_"
Numbers_.Parent = SourceBox
Numbers_.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Numbers_.BackgroundTransparency = 1.000
Numbers_.BorderColor3 = Color3.fromRGB(33, 33, 33)
Numbers_.BorderSizePixel = 0
Numbers_.Size = UDim2.new(1, 0, 1, 0)
Numbers_.ZIndex = 4
Numbers_.Font = Enum.Font.RobotoMono
Numbers_.Text = ""
Numbers_.TextColor3 = Color3.fromRGB(0, 200, 255)
Numbers_.TextSize = 14.000
Numbers_.TextWrapped = true
Numbers_.TextXAlignment = Enum.TextXAlignment.Left
Numbers_.TextYAlignment = Enum.TextYAlignment.Top

RemoteHighlight_.Name = "RemoteHighlight_"
RemoteHighlight_.Parent = SourceBox
RemoteHighlight_.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
RemoteHighlight_.BackgroundTransparency = 1.000
RemoteHighlight_.BorderColor3 = Color3.fromRGB(33, 33, 33)
RemoteHighlight_.BorderSizePixel = 0
RemoteHighlight_.Size = UDim2.new(1, 0, 1, 0)
RemoteHighlight_.ZIndex = 5
RemoteHighlight_.Font = Enum.Font.RobotoMono
RemoteHighlight_.Text = ""
RemoteHighlight_.TextColor3 = Color3.fromRGB(255, 106, 0)
RemoteHighlight_.TextSize = 14.000
RemoteHighlight_.TextWrapped = true
RemoteHighlight_.TextXAlignment = Enum.TextXAlignment.Left
RemoteHighlight_.TextYAlignment = Enum.TextYAlignment.Top

Strings_.Name = "Strings_"
Strings_.Parent = SourceBox
Strings_.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Strings_.BackgroundTransparency = 1.000
Strings_.BorderColor3 = Color3.fromRGB(33, 33, 33)
Strings_.BorderSizePixel = 0
Strings_.Size = UDim2.new(1, 0, 1, 0)
Strings_.ZIndex = 5
Strings_.Font = Enum.Font.RobotoMono
Strings_.Text = ""
Strings_.TextColor3 = Color3.fromRGB(234, 106, 2)
Strings_.TextSize = 14.000
Strings_.TextWrapped = true
Strings_.TextXAlignment = Enum.TextXAlignment.Left
Strings_.TextYAlignment = Enum.TextYAlignment.Top

Tokens_.Name = "Tokens_"
Tokens_.Parent = SourceBox
Tokens_.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Tokens_.BackgroundTransparency = 1.000
Tokens_.BorderColor3 = Color3.fromRGB(33, 33, 33)
Tokens_.BorderSizePixel = 0
Tokens_.Size = UDim2.new(1, 0, 1, 0)
Tokens_.ZIndex = 5
Tokens_.Font = Enum.Font.RobotoMono
Tokens_.Text = ""
Tokens_.TextColor3 = Color3.fromRGB(234, 234, 234)
Tokens_.TextSize = 14.000
Tokens_.TextWrapped = true
Tokens_.TextXAlignment = Enum.TextXAlignment.Left
Tokens_.TextYAlignment = Enum.TextYAlignment.Top

Comments_.Name = "Comments_"
Comments_.Parent = SourceBox
Comments_.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Comments_.BackgroundTransparency = 1.000
Comments_.BorderColor3 = Color3.fromRGB(33, 33, 33)
Comments_.BorderSizePixel = 0
Comments_.Size = UDim2.new(1.02906978, 0, 1, 0)
Comments_.ZIndex = 5
Comments_.Font = Enum.Font.RobotoMono
Comments_.Text = ""
Comments_.TextColor3 = Color3.fromRGB(34, 34, 34)
Comments_.TextSize = 14.000
Comments_.TextWrapped = true
Comments_.TextXAlignment = Enum.TextXAlignment.Left
Comments_.TextYAlignment = Enum.TextYAlignment.Top

ScriptHub.Name = "ScriptHub"
ScriptHub.Parent = Synapse
ScriptHub.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ScriptHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptHub.BorderSizePixel = 0
ScriptHub.Position = UDim2.new(0.061261721, 0, 0.330441654, 0)
ScriptHub.Size = UDim2.new(0, 439, 0, 239)

Title_2.Name = "Title"
Title_2.Parent = ScriptHub
Title_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(0, 439, 0, 22)
Title_2.Font = Enum.Font.RobotoMono
Title_2.Text = "     Script Hub"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 14.000
Title_2.TextXAlignment = Enum.TextXAlignment.Left

Close_2.Name = "Close"
Close_2.Parent = ScriptHub
Close_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close_2.BackgroundTransparency = 1.000
Close_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close_2.BorderSizePixel = 0
Close_2.Position = UDim2.new(0.0136674261, 0, 0, 0)
Close_2.Rotation = 90.000
Close_2.Size = UDim2.new(0, 20, 0, 22)
Close_2.Image = "rbxassetid://4536279714"

scripts.Name = "scripts"
scripts.Parent = ScriptHub
scripts.Active = true
scripts.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
scripts.BorderColor3 = Color3.fromRGB(0, 0, 0)
scripts.BorderSizePixel = 0
scripts.Position = UDim2.new(0, 0, 0.192468613, 0)
scripts.Size = UDim2.new(0, 439, 0, 147)
scripts.BottomImage = ""
scripts.CanvasSize = UDim2.new(0, 0, 0, 0)
scripts.TopImage = ""

synapse.Name = "synapse"
synapse.Parent = scripts
synapse.Active = true
synapse.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
synapse.BorderColor3 = Color3.fromRGB(0, 0, 0)
synapse.BorderSizePixel = 0
synapse.Size = UDim2.new(0, 439, 0, 147)
synapse.BottomImage = ""
synapse.CanvasSize = UDim2.new(0, 0, 0, 0)
synapse.TopImage = ""

dark_dex_v5lua.Name = "dark_dex_v5.lua"
dark_dex_v5lua.Parent = synapse
dark_dex_v5lua.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
dark_dex_v5lua.BorderColor3 = Color3.fromRGB(0, 0, 0)
dark_dex_v5lua.BorderSizePixel = 0
dark_dex_v5lua.Size = UDim2.new(0, 427, 0, 17)
dark_dex_v5lua.Font = Enum.Font.RobotoMono
dark_dex_v5lua.Text = "dark_dex_v5.lua"
dark_dex_v5lua.TextColor3 = Color3.fromRGB(255, 255, 255)
dark_dex_v5lua.TextSize = 14.000
dark_dex_v5lua.TextWrapped = true
dark_dex_v5lua.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout.Parent = synapse
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

chat_bypasserlua.Name = "chat_bypasser.lua"
chat_bypasserlua.Parent = synapse
chat_bypasserlua.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
chat_bypasserlua.BorderColor3 = Color3.fromRGB(0, 0, 0)
chat_bypasserlua.BorderSizePixel = 0
chat_bypasserlua.Size = UDim2.new(0, 427, 0, 17)
chat_bypasserlua.Font = Enum.Font.RobotoMono
chat_bypasserlua.Text = "chat_bypasser.lua"
chat_bypasserlua.TextColor3 = Color3.fromRGB(255, 255, 255)
chat_bypasserlua.TextSize = 14.000
chat_bypasserlua.TextWrapped = true
chat_bypasserlua.TextXAlignment = Enum.TextXAlignment.Left

vape_v4lua.Name = "vape_v4.lua"
vape_v4lua.Parent = synapse
vape_v4lua.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
vape_v4lua.BorderColor3 = Color3.fromRGB(0, 0, 0)
vape_v4lua.BorderSizePixel = 0
vape_v4lua.Size = UDim2.new(0, 427, 0, 17)
vape_v4lua.Font = Enum.Font.RobotoMono
vape_v4lua.Text = "vape_v4.lua"
vape_v4lua.TextColor3 = Color3.fromRGB(255, 255, 255)
vape_v4lua.TextSize = 14.000
vape_v4lua.TextWrapped = true
vape_v4lua.TextXAlignment = Enum.TextXAlignment.Left

personal.Name = "personal"
personal.Parent = scripts
personal.Active = true
personal.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
personal.BorderColor3 = Color3.fromRGB(0, 0, 0)
personal.BorderSizePixel = 0
personal.Size = UDim2.new(0, 439, 0, 147)
personal.Visible = false
personal.BottomImage = ""
personal.CanvasSize = UDim2.new(0, 0, 0, 0)
personal.TopImage = ""

dex_v5.Name = "dex_v5"
dex_v5.Parent = personal
dex_v5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dex_v5.BackgroundTransparency = 1.000
dex_v5.BorderColor3 = Color3.fromRGB(0, 0, 0)
dex_v5.BorderSizePixel = 0
dex_v5.Size = UDim2.new(0, 427, 0, 17)
dex_v5.Font = Enum.Font.RobotoMono
dex_v5.Text = "dark_dex_v5.lua"
dex_v5.TextColor3 = Color3.fromRGB(255, 255, 255)
dex_v5.TextSize = 14.000
dex_v5.TextWrapped = true
dex_v5.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout_2.Parent = personal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

chat_bypasser.Name = "chat_bypasser"
chat_bypasser.Parent = personal
chat_bypasser.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
chat_bypasser.BackgroundTransparency = 1.000
chat_bypasser.BorderColor3 = Color3.fromRGB(0, 0, 0)
chat_bypasser.BorderSizePixel = 0
chat_bypasser.Size = UDim2.new(0, 427, 0, 17)
chat_bypasser.Font = Enum.Font.RobotoMono
chat_bypasser.Text = "chat_bypasser.lua"
chat_bypasser.TextColor3 = Color3.fromRGB(255, 255, 255)
chat_bypasser.TextSize = 14.000
chat_bypasser.TextWrapped = true
chat_bypasser.TextXAlignment = Enum.TextXAlignment.Left

chat_bypasser_2.Name = "chat_bypasser"
chat_bypasser_2.Parent = personal
chat_bypasser_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
chat_bypasser_2.BackgroundTransparency = 1.000
chat_bypasser_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
chat_bypasser_2.BorderSizePixel = 0
chat_bypasser_2.Size = UDim2.new(0, 427, 0, 17)
chat_bypasser_2.Font = Enum.Font.RobotoMono
chat_bypasser_2.Text = "vape_v4.lua"
chat_bypasser_2.TextColor3 = Color3.fromRGB(255, 255, 255)
chat_bypasser_2.TextSize = 14.000
chat_bypasser_2.TextWrapped = true
chat_bypasser_2.TextXAlignment = Enum.TextXAlignment.Left

TopbarButtons_2.Name = "TopbarButtons"
TopbarButtons_2.Parent = ScriptHub
TopbarButtons_2.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TopbarButtons_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopbarButtons_2.BorderSizePixel = 0
TopbarButtons_2.Position = UDim2.new(0, 0, 0.0920502096, 0)
TopbarButtons_2.Size = UDim2.new(0, 439, 0, 19)

SynapseScripts.Name = "SynapseScripts"
SynapseScripts.Parent = TopbarButtons_2
SynapseScripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SynapseScripts.BackgroundTransparency = 1.000
SynapseScripts.BorderColor3 = Color3.fromRGB(0, 0, 0)
SynapseScripts.BorderSizePixel = 0
SynapseScripts.Position = UDim2.new(0.0136674261, 0, 0, 0)
SynapseScripts.Size = UDim2.new(0, 100, 0, 19)
SynapseScripts.Font = Enum.Font.RobotoMono
SynapseScripts.Text = "Synapse Scripts"
SynapseScripts.TextColor3 = Color3.fromRGB(255, 255, 255)
SynapseScripts.TextSize = 14.000

PersonalScripts.Name = "PersonalScripts"
PersonalScripts.Parent = TopbarButtons_2
PersonalScripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PersonalScripts.BackgroundTransparency = 1.000
PersonalScripts.BorderColor3 = Color3.fromRGB(0, 0, 0)
PersonalScripts.BorderSizePixel = 0
PersonalScripts.Position = UDim2.new(0.255125284, 0, 0, 0)
PersonalScripts.Size = UDim2.new(0, 104, 0, 19)
PersonalScripts.Font = Enum.Font.RobotoMono
PersonalScripts.Text = "Personal Scripts"
PersonalScripts.TextColor3 = Color3.fromRGB(255, 255, 255)
PersonalScripts.TextSize = 14.000

Execute_2.Name = "Execute"
Execute_2.Parent = ScriptHub
Execute_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Execute_2.BackgroundTransparency = 1.000
Execute_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute_2.BorderSizePixel = 0
Execute_2.Position = UDim2.new(0.0318906605, 0, 0.870292902, 0)
Execute_2.Size = UDim2.new(0, 98, 0, 19)
Execute_2.Font = Enum.Font.RobotoMono
Execute_2.Text = "Execute script"
Execute_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute_2.TextSize = 14.000

intoEditor.Name = "intoEditor"
intoEditor.Parent = ScriptHub
intoEditor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
intoEditor.BackgroundTransparency = 1.000
intoEditor.BorderColor3 = Color3.fromRGB(0, 0, 0)
intoEditor.BorderSizePixel = 0
intoEditor.Position = UDim2.new(0.268792719, 0, 0.870292902, 0)
intoEditor.Size = UDim2.new(0, 109, 0, 19)
intoEditor.Font = Enum.Font.RobotoMono
intoEditor.Text = "Load into editor"
intoEditor.TextColor3 = Color3.fromRGB(255, 255, 255)
intoEditor.TextSize = 14.000

Console.Name = "Console"
Console.Parent = Synapse
Console.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Console.BorderColor3 = Color3.fromRGB(0, 0, 0)
Console.BorderSizePixel = 0
Console.Position = UDim2.new(0.356491089, 0, 0.700324714, 0)
Console.Size = UDim2.new(0, 439, 0, 191)

Title_3.Name = "Title"
Title_3.Parent = Console
Title_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_3.BorderSizePixel = 0
Title_3.Size = UDim2.new(0, 439, 0, 22)
Title_3.Font = Enum.Font.RobotoMono
Title_3.Text = "     Console"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextSize = 14.000
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Close_3.Name = "Close"
Close_3.Parent = Console
Close_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close_3.BackgroundTransparency = 1.000
Close_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close_3.BorderSizePixel = 0
Close_3.Position = UDim2.new(0.0136674261, 0, 0, 0)
Close_3.Rotation = 90.000
Close_3.Size = UDim2.new(0, 20, 0, 22)
Close_3.Image = "rbxassetid://4536279714"

console.Name = "console"
console.Parent = Console
console.Active = true
console.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
console.BorderColor3 = Color3.fromRGB(0, 0, 0)
console.BorderSizePixel = 0
console.Position = UDim2.new(0, 0, 0.102521643, 0)
console.Size = UDim2.new(0, 439, 0, 171)
console.BottomImage = ""
console.CanvasSize = UDim2.new(0, 0, 5, 0)
console.TopImage = ""

UIListLayout_3.Parent = console
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

-- Scripts:

local function MHOEQ_fake_script() -- Executor.UIDrag 
	local script = Instance.new('LocalScript', Executor)

	-- Made by Real_IceyDev (@lceyDex) --
	-- Simple UI dragger (PC Only/Any device that has a mouse) --

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = -math.huge
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	script.Parent.Title.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(MHOEQ_fake_script)()
local function GIRMB_fake_script() -- TopbarButtons.LocalScript 
	local script = Instance.new('LocalScript', TopbarButtons)

	local execute, clear = script.Parent.Execute, script.Parent.Clear
	execute.MouseButton1Click:Connect(function()
		loadstring(script.Parent.Parent.SourceBoxDown.SourceBox.Text)()
	end)
	clear.MouseButton1Click:Connect(function()
		script.Parent.Parent.SourceBoxDown.SourceBox.Text = ""
	end)
end
coroutine.wrap(GIRMB_fake_script)()
local function QLQW_fake_script() -- SourceBox.LocalScript 
	local script = Instance.new('LocalScript', SourceBox)

	local Keywords = {
		"and",
		"break",
		"do",
		"else",
		"elseif",
		"end",
		"false",
		"for",
		"function",
		"if",
		"in",
		"local",
		"nil",
		"not",
		"or",
		"repeat",
		"return",
		"then",
		"true",
		"until",
		"while"
	}

	local G_Env = {
		"getrawmetatable",
		"game",
		"workspace",
		"script",
		"math",
		"string", 
		"table",
		"print",
		"wait",
		"BrickColor",
		"Color3",
		"next",
		"pairs",
		"ipairs",
		"select",
		"unpack",
		"Instance",
		"Vector2",
		"Vector3",
		"CFrame",
		"Ray",
		"UDim2",
		"Enum",
		"assert",
		"error",
		"warn",
		"tick",
		"loadstring",
		"_G",
		"shared",
		"getfenv",
		"setfenv",
		"newproxy",
		"setmetatable",
		"getmetatable",
		"os",
		"debug",
		"pcall",
		"xpcall",
		"rawequal",
		"rawset",
		"rawget",
		"tonumber",
		"tostring",
		"type",
		"typeof",
		"_VERSION",
		"coroutine",
		"delay",
		"require",
		"spawn",
		"settings",
		"stats",
		"time",
		"UserSettings",
		"version",
		"Axes",
		"ColorSequence",
		"Faces",
		"ColorSequenceKeypoint",
		"NumberRange",
		"NumberSequence",
		"NumberSequenceKeypoint",
		"gcinfo",
		"elapsedTime",
		"PhysicalProperties",
		"Rect",
		"Region3",
		"Region3int16",
		"UDim",
		"Vector2int16",
		"Vector3int16"
	}

	local Executor = script.Parent

	local Highlight = function(string, Keywords)
		local K = {}
		local S = string
		local Token = {
			["="] = true,
			["."] = true,
			[","] = true,
			["("] = true,
			[")"] = true,
			["["] = true,
			["]"] = true,
			["{"] = true,
			["}"] = true,
			[":"] = true,
			["*"] = true,
			["/"] = true,
			["+"] = true,
			["-"] = true,
			["%"] = true,
			[";"] = true,
			["~"] = true
		}

		for i, v in pairs(Keywords) do
			K[v] = true
		end
		S = S:gsub(".", function(c)
			if Token[c] ~= nil then
				return "\32"
			else
				return c
			end
		end)
		S = S:gsub("%S+", function(c)
			if K[c] ~= nil then
				return c
			else
				return (" "):rep(#c)
			end
		end)

		return S
	end

	local hTokens = function(string)
		local Token =
			{
				["="] = true,
				["."] = true,
				[","] = true,
				["("] = true,
				[")"] = true,
				["["] = true,
				["]"] = true,
				["{"] = true,
				["}"] = true,
				[":"] = true,
				["*"] = true,
				["/"] = true,
				["+"] = true,
				["-"] = true,
				["%"] = true,
				[";"] = true,
				["~"] = true
			}
		local A = ""
		string:gsub(".", function(c)
			if Token[c] ~= nil then
				A = A .. c
			elseif c == "\n" then
				A = A .. "\n"
			elseif c == "\t" then
				A = A .. "\t"
			else
				A = A .. "\32"
			end
		end)

		return A
	end


	local Strings = function(string)
		local Highlight = ""
		local Quote = false
		string:gsub(".", function(c)
			if Quote == false and c == "\"" then
				Quote = true
			elseif Quote == true and c == "\"" then
				Quote = false
			end
			if Quote == false and c == "'" then
				Quote = true
			elseif Quote == true and c == "'" then
				Quote = false
			end
			if Quote == false and c == "`" then
				Quote = true
			elseif Quote == true and c == "`" then
				Quote = false
			end
			if Quote == false and c == "\"" then
				Highlight = Highlight.."\""
			elseif Quote == false and c == "'" then
				Highlight = Highlight.."'"
			elseif Quote == false and c == "`" then
				Highlight = Highlight.."`"
			elseif c == "\n" then
				Highlight = Highlight.."\n"
			elseif c == "\t" then
				Highlight = Highlight.."\t"
			elseif Quote == true then
				Highlight = Highlight..c
			elseif Quote == false then
				Highlight = Highlight.."\32"
			end
		end)
		return Highlight
	end

	local Comments = function(string)
		local ret = ""
		string:gsub("[^\r\n]+", function(c)
			local comm = false
			local i = 0
			c:gsub(".", function(n)
				i = i + 1
				if c:sub(i, i + 1) == "--" then
					comm = true
				end
				if comm == true then
					ret = ret..n
				else
					ret = ret.."\32"
				end
			end)
			ret = ret
		end)

		return ret
	end

	local Numbers = function(string)
		local A = ""
		string:gsub(".", function(c)
			if tonumber(c) ~= nil then
				A = A .. c
			elseif c == "\n" then
				A = A .."\n"
			elseif c == "\t" then
				A = A .."\t"
			else
				A = A .."\32"
			end
		end)

		return A
	end

	local HighlightExecutor = function(type)
		if type == "Text" then
			Executor.Text = Executor.Text:gsub("\13", "")
			Executor.Text = Executor.Text:gsub("\t", "      ")
			local s = Executor.Text
			Executor.Keywords_.Text = Highlight(s, Keywords)
			Executor.Globals_.Text = Highlight(s, G_Env)
			Executor.RemoteHighlight_.Text = Highlight(s, {"FireServer", "InvokeServer"})
			Executor.Tokens_.Text = hTokens(s)
			Executor.Numbers_.Text = Numbers(s)
			Executor.Strings_.Text = Strings(s)
			Executor.Comments_.Text = Comments(s)
		end
	end

	HighlightExecutor("Text")

	Executor.Changed:Connect(HighlightExecutor)

	Executor.Text = "-- Synapse X (internal ui) Initiated"
end
coroutine.wrap(QLQW_fake_script)()
local function JEWNO_fake_script() -- ScriptHub.UIDrag 
	local script = Instance.new('LocalScript', ScriptHub)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = -math.huge
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	script.Parent.Title.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(JEWNO_fake_script)()
local function IMTNLE_fake_script() -- Console.UIDrag 
	local script = Instance.new('LocalScript', Console)
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = -math.huge
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	script.Parent.Title.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(IMTNLE_fake_script)()
console.ChildAdded:Connect(function(v)
	local children = console:GetChildren()
	local scroll_Size = #children / 9
	console.CanvasSize = UDim2.new(0, 0, scroll_Size, 0)
end)
local scale = Instance.new("UIScale", SourceBox)
scale.Scale = 1
SourceBox:GetPropertyChangedSignal("Text"):Connect(function()
	local lines = 1
	local newlines = SourceBox.Text:gsub("\n", function(v)
		lines = lines + 1
		return "\n"
	end)
	local that = lines / 14
	SourceBoxDown.CanvasSize = UDim2.new(0, SourceBox.TextBounds.X / (1), that, 0)
end)
chat_bypasser_2:Destroy()
chat_bypasser_2 = nil
if chat_bypasserlua == personal then
	chat_bypasserlua:Destroy()
end
if dex_v5.Parent == personal then
	dex_v5:Destroy()
end
if vape_v4lua.Parent == personal then
	vape_v4lua:Destroy()
end
chat_bypasser:Destroy()
local selected_custom_script = "none"
local script_buttons = {}
function insertScript(script)
	local old = script
	script = script:lower():gsub(" ", "_")
	if script:find("txt") then
		local dizz = script:gsub("txt", "lua")
		dizz = script:gsub(".lua.lua", ".lua")
		if dizz:find(".lua.lua") then
			dizz = dizz:gsub(".lua.lua", ".lua")
		end
		if dizz:find(".lua.lua") then
			dizz = dizz:gsub(".lua.lua", ".lua")
		end
		if dizz:find(".lua.lua") then
			dizz = dizz:gsub(".lua.lua", ".lua")
		end
		delfile(old)
		old = dizz
		writefile(dizz, readfile(old))
		script = dizz
	end
	script = script:gsub(".lua.lua", ".lua")
	local custom_script = Instance.new("TextButton")
	table.insert(script_buttons, custom_script)
	custom_script.Name = "custom_script_${number}.lua"
	custom_script.Parent = personal
	custom_script.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	custom_script.BorderColor3 = Color3.fromRGB(0, 0, 0)
	custom_script.BorderSizePixel = 0
	custom_script.Size = UDim2.new(0, 427, 0, 17)
	custom_script.Font = Enum.Font.RobotoMono
	local e = script:gsub("synv4/scripts\\", "")
	custom_script.Text = e..".lua"
	custom_script.TextColor3 = Color3.fromRGB(255, 255, 255)
	custom_script.TextSize = 14.000
	custom_script.TextWrapped = true
	custom_script.TextXAlignment = Enum.TextXAlignment.Left
	custom_script.MouseButton1Click:Connect(function()
		selected_custom_script = old
		for i, v in pairs(script_buttons) do
			v.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		end
		custom_script.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
	end)
	custom_script.Parent = personal
end
local synscriptselected = "none"
local other = {chat_bypasserlua, dark_dex_v5lua, vape_v4lua}
function insertSynapseScript(script, actual_code)
	local custom_script = Instance.new("TextButton")
	table.insert(other, custom_script)
	custom_script.Name = "custom_script_${number}.lua"
	custom_script.Parent = personal
	custom_script.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	custom_script.BorderColor3 = Color3.fromRGB(0, 0, 0)
	custom_script.BorderSizePixel = 0
	custom_script.Size = UDim2.new(0, 427, 0, 17)
	custom_script.Font = Enum.Font.RobotoMono
	custom_script.Text = script..".lua"
	custom_script.TextColor3 = Color3.fromRGB(255, 255, 255)
	custom_script.TextSize = 14.000
	custom_script.TextWrapped = true
	custom_script.TextXAlignment = Enum.TextXAlignment.Left
	custom_script.MouseButton1Click:Connect(function()
		synscriptselected = script
		for i, v in pairs(other) do
			v.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		end
		custom_script.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
	end)
	Execute.MouseButton1Click:Connect(function()
		if synapse.Visible == true then
			if synscriptselected == script then
				loadstring(actual_code)()
			end
		end
	end)
	intoEditor.MouseButton1Click:Connect(function()
		if synapse.Visible == true then
			if synscriptselected == script then
				SourceBox.Text = actual_code
			end
		end
	end)
	custom_script.Parent = synapse
end
for _, script in pairs(listfiles("synv4/scripts")) do
	if tostring(script):lower():find(".unreadable") then
		continue
	else
		insertScript(script)
	end
end
PersonalScripts.MouseButton1Click:Connect(function()
	synapse.Visible = false
	personal.Visible = true
end)
SynapseScripts.MouseButton1Click:Connect(function()
	synapse.Visible = true
	personal.Visible = false
end)
local function GZGH_fake_script() -- ScriptHub.ScripthubHandler 
	local script = Instance.new('LocalScript', ScriptHub)

	load = function(v) loadstring(v)() end;
	request = request or syn and syn.request or fluxus and fluxus.request or HttpRequest or http and http.request or http_request or function(a, b)
		if a.Method == "GET" then
			return game:HttpGet((a and (a.Url or a.url or a.URL)))
		end
	end;
	local vxpe = request(
		{
			["Method"] = "GET",
			["Url"] = 'https://raw.githubusercontent.com/zesty-codes/SynapseV4Lua/main/synapse_scripts/vape_v4.lua'
		}
	)
	local dexv5 = request(
		{
			["Method"] = "GET",
			["Url"] = 'https://raw.githubusercontent.com/zesty-codes/SynapseV4Lua/main/synapse_scripts/dark_dex_v5.lua'
		}
	)
	local chatbypasser = request(
		{
			["Method"] = "GET",
			["Url"] = 'https://raw.githubusercontent.com/zesty-codes/SynapseV4Lua/main/synapse_scripts/chat_bypasser.lua'
		}
	)
	local i = "none"
	function handler(v, _script)
		v.MouseButton1Click:Connect(function()
			synscriptselected = "none"
			i = _script
			for i, v in pairs(script.Parent.scripts.synapse:GetChildren()) do
				if v:IsA("TextButton") then
					v.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				end
			end
			script.Parent.scripts.synapse[i].BackgroundColor3 = Color3.fromRGB(90, 90, 90)
		end)
	end
	handler(script.Parent.scripts.synapse["vape_v4.lua"], "vape_v4.lua")
	handler(script.Parent.scripts.synapse["dark_dex_v5.lua"], "dark_dex_v5.lua")
	handler(script.Parent.scripts.synapse["chat_bypasser.lua"], "chat_bypasser.lua")
	script.Parent.Execute.MouseButton1Click:Connect(function()
		if i == "vape_v4.lua" then
			load(vxpe["Body"])
		elseif i == "dex" then
			load(dexv5["Body"])
		elseif i == "bypasser" then
			load(chatbypasser["Body"])
		end
	end)
	script.Parent.intoEditor.MouseButton1Click:Connect(function()
		if synapse.Visible == true then
			if i == "vape_v4.lua" then
				script.Parent.Parent.Executor.SourceBoxDown.SourceBox.Text = vxpe["Body"]
			elseif i == "dark_dex_v5.lua" then
				script.Parent.Parent.Executor.SourceBoxDown.SourceBox.Text = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/zesty-codes/SynapseV4Lua/main/synapse_scripts/dark_dex_v5.lua"))()'
			elseif i == "chat_bypasser.lua" then
				script.Parent.Parent.Executor.SourceBoxDown.SourceBox.Text = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/zesty-codes/SynapseV4Lua/main/synapse_scripts/chat_bypasser.lua"))()'
			end
		end
	end)
end
coroutine.wrap(GZGH_fake_script)()
Execute_2.MouseButton1Click:Connect(function()
	if personal.Visible == true then
		loadstring(readfile(selected_custom_script))()
	end
end)
intoEditor.MouseButton1Click:Connect(function()
	if personal.Visible == true then
		SourceBox.TextColor3 = readfile(selected_custom_script)
	end
end)
insertSynapseScript(
	"net_bypass",
	"loadstring(game:HttpGet('https://raw.githubusercontent.com/zesty-codes/SynapseV4Lua/main/synapse_scripts/net_bypass.lua'))()"
)
insertSynapseScript(
	"hat_hub",
	"loadstring(game:HttpGet('https://raw.githubusercontent.com/zesty-codes/SynapseV4Lua/main/synapse_scripts/hathub.lua'))()"
)
local debug = {}
debug.print = function(txt)
	txt = tostring(txt)
	local TextLabel = Instance.new("TextLabel", console)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 421, 0, 26)
	TextLabel.Font = Enum.Font.RobotoMono
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top
	TextLabel.Text = txt
end
debug.warn = function(txt)
	txt = tostring(txt)
	local TextLabel = Instance.new("TextLabel", console)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 421, 0, 26)
	TextLabel.Font = Enum.Font.RobotoMono
	TextLabel.TextColor3 = Color3.fromRGB(255, 163, 16)
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top
	TextLabel.Text = txt
end
debug.error = function(txt)
	txt = tostring(txt)
	local TextLabel = Instance.new("TextLabel", console)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 421, 0, 26)
	TextLabel.Font = Enum.Font.RobotoMono
	TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top
	TextLabel.Text = txt
end
debug.info = function(txt)
	txt = tostring(txt)
	local TextLabel = Instance.new("TextLabel", console)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 421, 0, 26)
	TextLabel.Font = Enum.Font.RobotoMono
	TextLabel.TextColor3 = Color3.fromRGB(8, 177, 255)
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top
	TextLabel.Text = txt
end
debug.info("Synapse X successsfuly (re)loaded.")
debug.warn("Failed to launch universal anticheat bypasser.")
local genv = (getgenv or get_genv or get_global_environment or get_g_env or get_global_env)()
genv.print = debug.print
genv.error = debug.error
genv.warn = debug.warn
genv.info = debug.info
