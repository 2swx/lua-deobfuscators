--DECRYPT_3 
local a = _G 
local str = _G['string']
local xor = _G['bit']['bxor']
local function obf(arg1) 
  print(arg1)
  if str['len'](arg1) == 0 then
    return arg1
  end 
  local start = ''
  
  local zero = 0
  --zero
  for v in str['gmatch'](arg1,'&') do 
    if v == 'T' then
      start = start..str['char'](_G['bit']['bxor'](zero,108))
      zero = 0 
    else 
    zero = zero +1
    end
  end
  return start
end 
