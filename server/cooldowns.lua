Cooldowns = {}

function IsOnCooldown(src, action)
    local now = os.time()
    if Cooldowns[src] and Cooldowns[src][action] and now < Cooldowns[src][action] then
        return true
    end
    Cooldowns[src] = Cooldowns[src] or {}
    Cooldowns[src][action] = now + Config.Cooldowns[action]
    return false
end
