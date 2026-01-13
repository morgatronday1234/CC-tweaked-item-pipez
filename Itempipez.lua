--This project is under the CC-BY-4.0 license
--https://github.com/morgatronday1234
--Read the license!

DEBUG = false
function move(input, output, nameFilter, inSlotFilter, outSlotFilter)
 assert(type(input) == "string", "Argument #1: Expected string(side), Got: "..tostring(input))
 assert(type(output) == "string", "Argument #2: Expected string(side), Got: "..tostring(input))
 --assert(type(filter) == "table")
 
 --print("Moving items from: '"..input.."' To: '"..output.."'")
 local inputPer = peripheral.wrap(input)

 assert(type(inputPer) == "table", "Argument #1: Expected peripheral, Got: '"..tostring(input).."'\n(Warning this may no-longer be a peripheral!)")
 

 if (inSlotFilter) and (inSlotFilter > inputPer.size()) then
  return false, "slot greater then amount of slots"
 end

 for fromSlot, _ in pairs(inputPer.list()) do
  if (inSlotFilter) and (type(inSlotFilter) == "number") then
   fromSlot = inSlotFilter
  end
  if (outSlotFilter) and (type(outSlotFilter) == "number") then
   toSlot = outSlotFilter
  end 
  dataPerSlot = inputPer.getItemDetail(fromSlot) 
  
  --if (DEBUG) then print(nameFilter, dataPerSlot) end
  
  if (nameFilter) and (dataPerSlot) and (dataPerSlot.displayName == nameFilter) then
   return true, inputPer.pushItems(output, fromSlot, 128, toSlot)
  elseif (nameFilter == nil) then
   
   return true, inputPer.pushItems(output, fromSlot, 128, toSlot)
  end
  return false, "failed to move anything"
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
--move("input", "output", ["nameFilter", inputSlotFilter, outputSlotFilter]) (nameFilter is not required)
function main() while(true) do

end end
--main() 
--This project is under the CC-BY-4.0 license
--https://github.com/morgatronday1234
--Read the license!
