
Background = {}

function Background:load()
    self.BG = love.graphics.newImage("assets/BG.png")
end

-----------------------------------------------------------------

function Background:update(dt)

end

-----------------------------------------------------------------

function Background:draw()
    love.graphics.draw(self.BG, 0 , 0)
end
