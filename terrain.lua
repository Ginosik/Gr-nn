require('pos')

terrain = {}
terrain.sprites = {love.graphics.newImage('Sprites/Terrain.png')}

function terrain.sprite()
  local x = 0
  repeat
    love.graphics.draw(terrain.sprites[1], x, pos.unit*54)
    x = x + 240
  until x > love.graphics.getWidth()
  love.graphics.setColor(96, 54, 47)
  love.graphics.rectangle('fill', 0, pos.unit*54 +120, love.graphics.getWidth(), (love.graphics.getHeight()-love.graphics.getHeight()/1.2))
end
