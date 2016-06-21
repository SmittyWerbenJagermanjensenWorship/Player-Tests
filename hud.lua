require "player"

function loadHud()
    resourceBar = love.graphics.newImage("resources/dicks.png")
end

function hud()

end

function drawHud()
-- HEALTH
    --fill
    love.graphics.setColor(237, 67, 55)
    love.graphics.rectangle("fill", 12, 12, ((player.health * 2)- 4), 35)
    --shell
    love.graphics.setColor(255, 255, 255)
    love.graphics.draw(resourceBar, 10, 10, 0, 1, 1)
-- STAMINA
    --fill
    love.graphics.setColor(30, 215, 30)
    love.graphics.rectangle("fill", 12, 52, ((player.stamina * 2)- 4), 35)
    --shell
    love.graphics.setColor(255, 255, 255)
    love.graphics.draw(resourceBar, 10, 50, 0, 1, 1)
end