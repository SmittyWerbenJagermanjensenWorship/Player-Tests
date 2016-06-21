require "player"
require "debugpanel"
require "hud"
require "enemy"


function love.load()
	background = love.graphics.newImage("resources/background.png")
	loadHud()
end

function love.update(dt)
	-- ENABLED PLAYER FUNCTIONS
	movement(dt)
	enemyMovement(dt)
	runningShit()
	regen()
end

function love.draw()
	-- IMPORTANT SHIT, MUST BE DRAWN FIRST
	love.graphics.setColor(255, 255, 255)
	love.graphics.draw(background, 0, 0, 0)
	-- DRAW PLAYER SHIT
	drawplayer()
	-- DRAW ENEMY SHIT
	drawEnemy()
	-- DRAWN LAST
	drawHud()
	-- DEBUG SHIT
	debugpanel()
end