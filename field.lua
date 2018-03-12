require('player')

field = {}
field.unitCount = 0

field.limit = math.floor(love.graphics.getWidth()/60)

repeat
  field.unitCount = field.unitCount + 1
until (field.unitCount == field.limit)

function field.update(dt)
  if love.keyboard.isDown('5') then
    love.event.quit()
  end

  if love.keyboard.isDown('e')  then
    gameMode = 0
  end
end

function field.sprite()
  love.graphics.print(field.limit .. ' ' .. love.graphics.getWidth()%60)
end
