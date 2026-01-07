require("Itempipez")

local function log(text)
 local file = fs.open("LOG.txt", "w")
 file.write(text)
 file.close()
end

parallel.waitForAny(
function() while(true) do
 local passMain, errMain = pcall(main)
 
 print(tostring(errMain))
 log(errMain)
end end,
--Thank you anon functions
function() while(true) do 
 event = os.pullEventRaw("terminate")
 if (event == "terminate") then
  error("Term'd (:3)")
 end
end end)
