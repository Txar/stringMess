function getList(str)
    strl = {}
    for i in string.gmatch(str, "%S+") do
        strl[#(strl) + 1] = i
    end
    return strl
end

function getMessedString(strl)
    str2 = ""
    for i=1,#(strl) do
        str2 = str2..messUp(strl[i])
        if (i ~= #(strl)) then
            str2 = str2.." "
        end
    end
    return str2
end

function getString(strl)
    str2 = ""
    for i=1,#(strl) do
        str2 = str2..strl[i]
        if (i ~= #(strl)) then
            str2 = str2.." "
        end
    end
    return str2
end

function messUp(str)
    str2 = ""
    g = string.len(str)
    for i=1,g do
        ing = math.random(string.len(str))
        str2 = str2..string.sub(str, ing, ing)
        str = string.sub(str, 1, ing - 1)..string.sub(str, ing + 1, g)
    end
    return str2
end

function advancedMess(str)
    str2 = ""
    strl = getList(str)
    str2 = getMessedString(strl)
    return str2
end

function wordMess(str)
    strl = getList(str)
    strl2 = {}
    for i=1,#(strl) do
        ii = math.random(#(strl))
        strl2[#(strl2) + 1] = strl[ii]
        table.remove(strl, ii)
    end
    str2 = getString(strl2)
    return str2
end

--str = "what a nice string you got there would be a shame if someone messed it up"
print("Input a string you want to get messed up:")
str = io.read()
print("\n"..messUp(str).."\n\n"..advancedMess(str).."\n\n"..wordMess(str))