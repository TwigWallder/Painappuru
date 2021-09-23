require("player")

function love.load()
    Player:load()
end


function love.update(dt) --DT signifie Delta time et c'est le temps qu'il faut pour fait une frame.
    Player:update(dt)
end


function love.draw()
    Player:draw()
end