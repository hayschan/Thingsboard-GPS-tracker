--[[
Create a basic LuatOS program in Lua with the following features:
- Use the LTE module to connect to the internet
- Use the GPS module to get the current location with latitude and longitude
- Create a JSON object with the latitude and longitude, and relay state (either on or off)
- Send the JSON object as string to Thingsboard server using MQTT
- Create state for markdown with default text "type markdown here"
--]]


-- LuaTools需要PROJECT和VERSION这两个信息
PROJECT = "GPS-tracker"
VERSION = "1.0.0"

-- 引入必要的库文件(lua编写), 内部库不需要require
local sys = require("sys")
local networking = require("networking")
local relay_state = require("relay_state")

require("sysplus")

-- watchdog, 喂狗时间
if wdt then
    wdt.init(9000)
    sys.timerLoopStart(wdt.feed, 3000)
end



-- 用户代码开始-----------------------------------------------









-- 用户代码已结束---------------------------------------------
-- 结尾总是这一句
sys.run()
-- sys.run()之后后面不要加任何语句!!!!!
