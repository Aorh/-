local Copy = {}
H = {}

--浅拷贝
function Copy.ShallowCopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

--深拷贝
function Copy.DeepCopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[Copy.DeepCopy(orig_key)] = Copy.DeepCopy(orig_value)
        end
        setmetatable(copy, Copy.DeepCopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

--清理lua中已经require的文件
function RemoveRequiredByName( preName )
    for key, _ in pairs(package.preload) do
        if string.find(tostring(key), preName) == 1 then
            package.preload[key] = nil
        end
    end
    for key, _ in pairs(package.loaded) do
        if string.find(tostring(key), preName) == 1 then
            package.loaded[key] = nil
        end
    end
end

return Copy