--[[
   https://github.com/hchunhui/librime-lua
--]]
function date_translator(input, seg)
   if input == "datetime" then
      yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d %H:%M:%S"), "Datetime"))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日 %H时%M分%S秒"), "日期时间"))
   elseif input == "date" then
      yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), "Date"))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), "日期"))
   elseif input == "time" then
      yield(Candidate("date", seg.start, seg._end, os.date("%H:%M:%S"), "Time"))
      yield(Candidate("date", seg.start, seg._end, os.date("%H时%M分%S秒"), "时间"))
   end
end