enemy = {
		width = 25,
		height = 25,
		x = 620,
		y = 115,
		health = 50,
		stamina = 25,
		}

function loadEnemy()

end

function enemyMovement(dt)
	if love.keyboard.isDown("up") then
		enemy.y = enemy.y - (100 * dt)
	end
	if love.keyboard.isDown("down") then
		enemy.y = enemy.y + (100 * dt)
	end
	if love.keyboard.isDown("left") then
		enemy.x = enemy.x - (100 * dt)
	end
	if love.keyboard.isDown("right") then
		enemy.x = enemy.x + (100 * dt)
	end

-- CHECK IF INSIDE BOUNDS
	if enemy.x < 0 then enemy.x = 0 end
	if enemy.x > (1020 - enemy.width) then enemy.x = (1020 - enemy.width) end
	if enemy.y < 0 then enemy.y = 0 end
	if enemy.y > (768 - enemy.height) then enemy.y = (768 - enemy.height) end
end

function drawEnemy()
	love.graphics.setColor(173, 53, 53)
	love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.width, enemy.height)
end