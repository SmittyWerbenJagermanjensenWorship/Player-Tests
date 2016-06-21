player = {
		height = 15,
		width = 15,
		x = 90,
		y = 420,
		health = 100,
		stamina = 100,
		isRunning = false,
		runningLocked = false,
		isMoving = false,
		oldX = 300,
		oldY = 255,
		}

-- CONTROLS PLAYER MOVEMENT
function movement(dt)
		if love.keyboard.isDown("w") then
			if player.isRunning and (player.stamina - .25) > 0 then
				player.y = player.y - (200 * dt)
			else
				player.y = player.y - (100 * dt)
			end
		end
		if love.keyboard.isDown("a") then
			if player.isRunning and (player.stamina - .25) > 0 then
				player.x = player.x - (200 * dt)
			else
				player.x = player.x - (100 * dt)
			end
		end
		if love.keyboard.isDown("s") then
			if player.isRunning and (player.stamina - .25) > 0 then
				player.y = player.y + (200 * dt)
			else
				player.y = player.y + (100 * dt)
			end
		end
		if love.keyboard.isDown("d") then
			if player.isRunning and (player.stamina - .25) > 0 then
				player.x = player.x + (200 * dt)
			else
				player.x = player.x + (100 * dt)
			end
		end

		-- DRAIN STAMINA IF RUNNING
		if player.isRunning and player.isMoving then
			player.stamina = player.stamina - .25
		end

		-- CHECK IF INSIDE BOUNDS
		if player.x < 0 then player.x = 0 end
		if player.x > (1020 - player.width) then player.x = (1020 - player.width) end
		if player.y < 0 then player.y = 0 end
		if player.y > (768 - player.height) then player.y = (768 - player.height) end

	end

-- DRAW FUNCTION
function drawplayer()
	love.graphics.setColor(50, 50, 50)
	love.graphics.rectangle("fill", player.x, player.y, player.height, player.width)
end

-- REGENS ALL REQUIRED STATS
function regen()
	if player.isRunning == false then
		player.stamina = player.stamina + .25
	end
	if player.stamina > 100 then
		player.stamina = 100
	end
end

function runningShit()
-- SETS RUNNING SHIT
	if love.keyboard.isDown("lshift") and player.runningLocked == false and player.isMoving then
		player.isRunning = true
	else
		player.isRunning = false
	end
-- TESTS IF RUNNING NEEDS TO BE DISABLED FOR A SHORT TIME
	if player.stamina < 1 then
		player.runningLocked = true
	end
	if player.runningLocked == true and player.stamina >= 50 then
		player.runningLocked = false
	end
-- CHECKS IF THE PLAYER IS MOVING
	if player.x == player.oldX or player.y == player.oldY then
	player.isMoving = false
	end

	if player.x ~= player.oldX or player.y ~= player.oldY then
	player.isMoving = true
	end
	
	player.oldX = player.x
	player.oldY = player.y
end