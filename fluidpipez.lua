--This project is under the CC-BY-4.0 license
--https://github.com/morgatronday1234
--Read the license!

function move(input, output, amountLimit, fluidFilter)
 assert(type(input) == "string", "Argument #1: Expected string(side), Got: "..tostring(input))
 assert(type(output) == "string", "Argument #2: Expected string(side), Got: "..tostring(input))

 local inputPer = peripheral.wrap(input)
 assert(type(inputPer) == "table", "Argument #1: Expected peripheral, Got: '"..tostring(input).."'\n(Warning this may no-longer be a peripheral!)")

 if (inputPer) then
  return true, inputPer.pushFluid(output, amountLimit, fluidFilter)
 end

 return false, "failed to move anything"
end

--[[ move()
@param string, Input peripheral
@param string, Output peripheral
@optional int, Transfer limit
@optional string, fluid namespace id filter
--]]
--move("input", "output", [amountLimit, fluidFilter])
function main() while(true) do
 
end end
main()

