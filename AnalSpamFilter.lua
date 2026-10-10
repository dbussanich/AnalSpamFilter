local function SpamFilter(self, event, msg, author, ...)
    if issecretvalue and issecretvalue(msg) then
        return false
    end

    local lowerMsg = string.lower(msg)

    -- 1. "anal" + any item link
    if lowerMsg:find("anal", 1, true) and msg:find("|Hitem:", 1, true) then
        return true
    end

    -- 2. "say"/"said" + Thunderfury link
    if (lowerMsg:find("say", 1, true) or lowerMsg:find("said", 1, true))
        and msg:find("|Hitem:19019:", 1, true) then
        return true
    end

    -- 3. "trump" + any item link
    if lowerMsg:find("trump", 1, true) then
        return true
    end

    return false
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", SpamFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", SpamFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", SpamFilter)