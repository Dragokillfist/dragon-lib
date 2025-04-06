-- some default functions for use

--load files
function DL.lf(path, id)
    return SMODS.load_file(path, id)
end

-- loads mod files
function DL.fm(id)
    return SMODS.find_mod(id)
end