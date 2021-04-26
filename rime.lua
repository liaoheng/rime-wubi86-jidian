--[[
   https://github.com/hchunhui/librime-lua
--]]
function date_translator(input, seg)
   if input == "datetime" then
      yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d %H:%M:%S"), "DateTime"))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日 %H时%M分%S秒"), "日期时间"))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日 %H时%M分%S秒"), "日期时间周"))
   elseif input == "date" then
      local weakTab = {'日', '一', '二', '三', '四', '五', '六'}
      yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), "Date"))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), "日期"))
      yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日").." 周"..weakTab[tonumber(os.date("%w")+1)], "日期周"))
   elseif input == "time" then
      yield(Candidate("date", seg.start, seg._end, os.date("%H:%M:%S"), "Time"))
      yield(Candidate("date", seg.start, seg._end, os.date("%H时%M分%S秒"), "时间"))
  end
end