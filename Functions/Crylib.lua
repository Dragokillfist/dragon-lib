-- playing card contexts

-- used for card scoring
function DL.score_card(context)
    return context.cardarea == G.play and context.main_scoring and not context.cry_press
end

function DL.retigger_cards(context)
    return context.cardarea and context.cardarea == G.play and context.repetition and not context.cry_press
end

function DL.per_score(context)
    return context.individual and context.cardarea == G.play and not context.cry_press
end

-- joker contexts

-- used for jokers scoring
function DL.joker(context)
    return context.joker_main and context.cardarea == G.jokers and not context.cry_press
end



-- consumable functions

function CQ(fc, de, t, tr, bl, ba)
    G.E_MANAGER:add_event(Event({
		timer = t,
		trigger = tr,
		delay = de,
		blockable = bl,
		blocking = ba,
		func = fc
	}))
end