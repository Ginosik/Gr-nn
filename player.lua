require('pos')
require('keys')

player = {}
player.spritesheet = love.graphics.newImage("Sprites/Brocolewis_spritesheet.png")
player.spritesheet2 = love.graphics.newImage("Sprites/Brocolewis_spritesheet2.png")
player.direction = 1
player.middle = - 34
player.speed = 120
player.move = player.spritesheet

player.x = (love.graphics.getWidth()/2)
player.y = (pos.unit*54) - player.spritesheet:getHeight()

player.brocolewisFrames = {}
player.frameHeight = 88
player.frameWidth = 68
player.numFrames = 8

player.currentFrame = 1
player.delayFrame = 0.2
player.timelapse = 0

function player.update(dt)

  for frame = 1, player.numFrames do
    player.brocolewisFrames[frame] = love.graphics.newQuad((frame - 1) * player.frameWidth, 0, player.frameWidth, player.frameHeight, player.spritesheet:getDimensions())
  end

  if love.keyboard.isDown('d') and love.keyboard.isDown('a') == false and player.x < love.graphics.getWidth() + player.middle then
    moveRight(dt)
  elseif love.keyboard.isDown('a') and love.keyboard.isDown('d') == false and player.x - player.middle > 0 then
    loveLeft(dt)
  else
    player.move = player.spritesheet
  end

  if love.keyboard.isDown('q') then
    gameMode = 2
  end

  player.timelapse = player.timelapse + dt
  if player.timelapse > player.delayFrame then
    player.timelapse = player.timelapse - player.delayFrame
    player.currentFrame = player.currentFrame + 1
    if player.currentFrame > player.numFrames then
      player.currentFrame = 1
    end
    player.currentFrame = player.currentFrame % player.numFrames + 1
  end

  if love.keyboard.isDown('5') then
    love.event.quit()
  end
end

function player.sprite()
  love.graphics.setColor(255, 255, 255, 255)
  love.graphics.draw(player.move, player.brocolewisFrames[player.currentFrame], player.x + player.middle, player.y, nil, player.direction, 1)
end
