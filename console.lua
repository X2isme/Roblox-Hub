local copy = setclipboard or clipboard.set or copystring or syn.write_clipboard

local str = ''
for _,v in next, game.CoreGui.DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.ClientLog:children() do
local m = v:FindFirstChild'msg'
if(m)then
str=str..m.Text..'\n'
end
end
if(copy)then
copy(str)
elseif(writefile)then
writefile("dev_logs.txt",str)
else
error("get a better exploit lol")
end
