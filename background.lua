require('pos')

background = {}
background.sprites = {love.graphics.newImage('Sprites/Sky1.png')}

function background.sprite()
  local x = 0
  love.graphics.setColor(203, 219, 252)
  love.graphics.rectangle('fill', 0, 0, love.graphics.getWidth(), pos.unit* 54)
  love.graphics.setColor(190, 210, 250)
  love.graphics.rectangle('fill', 0, 0, love.graphics.getWidth(), pos.unit* 53-4)
  love.graphics.setColor(177, 202, 250)
  love.graphics.rectangle('fill', 0, 0, love.graphics.getWidth(), pos.unit* 52-4)
  love.graphics.setColor(165, 195, 250)
  love.graphics.rectangle('fill', 0, 0, love.graphics.getWidth(), pos.unit* 50-4)
  love.graphics.setColor(152, 187, 250)
  love.graphics.rectangle('fill', 0, 0, love.graphics.getWidth(), pos.unit* 47-4)
  love.graphics.setColor(140, 180, 250)
  love.graphics.rectangle('fill', 0, 0, love.graphics.getWidth(), pos.unit* 42-4)
  love.graphics.setColor(127, 172, 250)
  love.graphics.rectangle('fill', 0, 0, love.graphics.getWidth(), pos.unit* 34-4)
  love.graphics.setColor(115, 164, 250)
  love.graphics.rectangle('fill', 0, 0, love.graphics.getWidth(), pos.unit* 21-4)
  repeat
    love.graphics.setColor(203, 219, 252)
    love.graphics.draw(background.sprites[1], x, pos.unit*54 - 116)
    love.graphics.setColor(190, 210, 250)
    love.graphics.draw(background.sprites[1], x, pos.unit*53 - 116)
    love.graphics.setColor(177, 202, 250)
    love.graphics.draw(background.sprites[1], x, pos.unit*52 - 116)
    love.graphics.setColor(165, 195, 250)
    love.graphics.draw(background.sprites[1], x, pos.unit*50 - 116)
    love.graphics.setColor(152, 187, 250)
    love.graphics.draw(background.sprites[1], x, pos.unit*47 - 116)
    love.graphics.setColor(140, 180, 250)
    love.graphics.draw(background.sprites[1], x, pos.unit*42 - 116)
    love.graphics.setColor(127, 172, 250)
    love.graphics.draw(background.sprites[1], x, pos.unit*34 - 116)
    love.graphics.setColor(115, 164, 250)
    love.graphics.draw(background.sprites[1], x, pos.unit*21 - 116)
    x = x + 240
  until x > love.graphics.getWidth()
end

--1-1-2-3-5-8-13-21-13=1-2-4-7-12-20-33-54-67///67-54-53-52-50-47-42-34-21
