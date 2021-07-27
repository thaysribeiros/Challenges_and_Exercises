##
##
## QWASAR.IO -- rostring
##
##
## @param {String} param_1
##
## @return {string}
##

def rostring(str)
  
  if str == ""
     return ""
  end  
  str = str.lstrip
  str = str.split(/(\s+)/)
  i = 1
  result = []
  while (i < str.length)
    result << str[i]
    i+=1
  end
  result << " "+str[0]
  result = result.join("")
  return result.lstrip()
end
