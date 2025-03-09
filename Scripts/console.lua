local GlobalAr = nil

function Log(Message)
    if GlobalAr ~= nil then
        -- Log the message
        GlobalAr:Log(Message)
    end
end

function Helper()
    Log('ultimateMod commands:')
    Log('  ultimateMod start - Start the mod')
    Log('  ultimateMod stop - Stop the mod')
end

function RegisterConsoleCommand(FullCommand, Parameters, Ar)
    -- Store the Ar object in a global variable
    GlobalAr = Ar

    if #Parameters < 1 then
        Helper()
        return false    
    end

    -- Start the mod
    if Parameters[1] == 'start' then
        Log('UltimateMod is starting')
        StartMod()
        return true
    end

    -- Stop the mod
    if Parameters[1] == 'stop' then
        Log('Soon...')
        return true
    end

    -- Show the help by default
    return false

end

