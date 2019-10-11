--require("bit")
bit = {}
function bit:bxor(a,b)--Bitwise xor
    local p,c=1,0
    while a>0 and b>0 do
        local ra,rb=a%2,b%2
        if ra~=rb then c=c+p end
        a,b,p=(a-ra)/2,(b-rb)/2,p*2
    end
    if a<b then a=b end
    while a>0 do
        local ra=a%2
        if ra>0 then c=c+p end
        a,p=(a-ra)/2,p*2
    end
    return c
end


local a = _G 
local str = _G['string']
local aaa = _G['bit']['bxor']
local function obf(arg1) 
  
  if str['len'](arg1) == 0 then
    return arg1
  end 
  local start = ''
  
  local zero = 0
  --zero
  for v in str['gmatch'](arg1,'&') do 
    print(v)
    if v == '|' then
     
      start = start..str['char'](_G['bit']['bxor'](zero,108))
      zero = 0 
    else 

    zero = zero +1
    end
  end
  return start
end 

local res = obf("a6|aaa|||a|aaaaaaaaaaaaaaaaaaaaaaaaaT|aaaaaaaaa|a|aaaaaaaaaa||aa8u|aaaaaaaaaaaaaaaaaaaaaaaaa22|")
print(res)
--local resOfAA = aaaaaaa("a6baaabbbabaaaaaaaaaaaaaaaaaaaaaaaaaTbaaaaaaaaababaaaaaaaaaabbaa8ubaaaaaaaaaaaaaaaaaaaaaaaaa22b")
--res(resOfAA)
