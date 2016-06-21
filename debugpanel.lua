--Debug Panel
function debugpanel()
mouseX, mouseY = love.mouse.getPosition()

love.graphics.setColor(0, 0, 0)
-- DRAW MOUSE X AND Y 
love.graphics.print(tostring(mouseX), 10, 100)
love.graphics.print(tostring(mouseY), 10, 120)
end