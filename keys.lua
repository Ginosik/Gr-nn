function moveRight(dt)
  player.x = player.x + player.speed * dt
  player.direction = 1
  player.middle = - 34
  player.move = player.spritesheet2
end

function loveLeft(dt)
  player.x = player.x - player.speed * dt
  player.direction = -1
  player.middle = 34
  player.move = player.spritesheet2
end
