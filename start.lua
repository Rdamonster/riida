sudo_riida = dofile("sudo.lua")
https = require("ssl.https")
JSON = dofile("./libs/JSON.lua")
local riida_dev = io.open("riida_online.lua")
if riida_dev then
riida_on = {string.match(riida_dev:read('*all'), "^(.*)/(%d+)")}
local files = io.open("sudo.lua", 'w')
files:write("token = '" ..riida_on[1].."'\n\nsudo_add = "..riida_on[2].."" )
files:close()
https.request("https://api.telegram.org/bot"..riida_on[1].."/sendMessage?chat_id="..riida_on[2].."&text=Bot_riida_is_start_new")
os.execute('cd .. && rm -rf .telegram-cli')
os.execute('rm -rf riida_online.lua')  
os.execute('./tg -s ./riida.lua $@ --bot='..riida_on[1])
end
function chack(tokenCk)
local getme = "https://api.telegram.org/bot" ..tokenCk.. '/getme'
local req = https.request(getme)
local data = JSON:decode(req)
if data.ok == true then
print("\27[31m✓ DONE\27[m \27[1;34m»»Now Send Sudo ID««\27[m")
local sudo_send  = io.read()
print("\27[31m✓ DONE\27[m")
local files = io.open("sudo.lua", 'w')
files:write("token = '" ..tokenCk.."'\n\nsudo_add = "..sudo_send.."" )
files:close()
os.execute('cd .. && rm -fr .telegram-cli')
os.execute('cd && rm -fr .telegram-cli')
os.execute('./tg -s ./riida.lua $@ --bot='..tokenCk)
else
print("\27[31m»»This TOKEN Incorrect , Send Right TOKEN««\27[m")
local token_send = io.read()
chack(token_send)
end
end
os.execute('cd .. && rm -rf .telegram-cli')
if token and token == "TOKEN" then 
print("\27[1;34m»»send tokin bot ««\27[m")
local token_send = io.read()
chack(token_send)
else 
os.execute('cd .. && rm -fr .telegram-cli')
os.execute('cd && rm -fr .telegram-cli')
sudo_zezo = dofile("sudo.lua")
local getme = "https://api.telegram.org/bot" ..token.. '/getme'
local req = https.request(getme)
local data = JSON:decode(req)
if data.ok == true then
os.execute('./tg -s ./riida.lua $@ --bot='..token)
else
print("\27[31mTOKEN Incorrect , Send Right TOKEN««\27[m")
local token_send = io.read()
chack(token_send)
end
end
