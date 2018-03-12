function love.load()
  love.window.setFullscreen(true)

  blips = love.audio.newSource('Audio/bla.wav')
  blips:setVolume(0.1)
  blips:setPitch(1.5)

  require('player')
  require('terrain')
  require('field')
  require('background')

  gameMode = 0
end

function love.update(dt)
  blips:play()
  if gameMode == 0 then
    player.update(dt)
  else
    field.update(dt)
  end
end

function love.draw()
  background.sprite()
  player.sprite()
  terrain.sprite()
  field.sprite()
end
