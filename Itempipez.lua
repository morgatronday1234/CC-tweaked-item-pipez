--This project is under the CC-BY-NC-4.0 license
--https://github.com/morgatronday1234
--Read the license!

function move(input, output, nameFilter, inSlotFilter, outSlotFilter)
 assert(type(input) == "string", "Argument #1: Expected string(side), Got: "..tostring(input))
 assert(type(output) == "string", "Argument #2: Expected string(side), Got: "..tostring(input))
 --assert(type(filter) == "table")
 
 --print("Moving items from: '"..input.."' To: '"..output.."'")
 inputPer = peripheral.wrap(input)

 assert(type(inputPer) == "table", "Argument #1: Expected peripheral, Got: '"..tostring(input).."'\n(Warning this may no-longer be a peripheral!)")
 
 
 for fromSlot, _ in pairs(inputPer.list()) do
  dataPerSlot = inputPer.getItemDetail(fromSlot)
  
  if (inSlotFilter) and (type(inSlotFilter) == "number") then
   fromSlot = inSlotFilter
  end
  if (outSlotFilter) and (type(outSlotFilter) == "number") then
   toSlot = outSlotFilter
  end
  
  if (nameFilter) and (dataPerSlot) and (dataPerSlot.displayName == nameFilter) then
   inputPer.pushItems(output, fromSlot, 64, toSlot)
  elseif (nameFilter == nil) then
   inputPer.pushItems(output, fromSlot, 64, toSlot)
  end
 end
 os.sleep(0.05)
end

--[[ move()
@param string, Input peripheral
@param string, Output peripheral
@optional string, Input name filter
@optional int, Input slot filter
@optional int, Ouput slot filter
--]]
--move("input", "output", ["nameFilter", inputSlotFilter, outputSlotFilter]) ([ ] stuff is not required, You can leave them as nil if you need on but not the rest)
function main() while(true) do

end end
--main() 
--Val if you want to run this code without startup remove the comment above this one to call main().
--If you want to run this with startup just comment out it once more.

--This project is under the CC-BY-NC-4.0 license
--https://github.com/morgatronday1234
--Read the license!