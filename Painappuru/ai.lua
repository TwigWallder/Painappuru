
AI = {}

function AI:load()
    self.img = love.graphics.newImage("assets/ai.png")
    self.width = self.img:getWidth()
    self.height = self.img:getHeight()
    self.x = love.graphics.getWidth() - self.width - 50
    self.y = love.graphics.getHeight() / 2
    self.yVel = 0
    self.speed = 850
    self.timer = 0
    self.rate = 0.5
end

-----------------------------------------------------------------

function AI:update(dt)
    self:move(dt)
    self:checkBoundaries()
    self:acquireTarget()
    if self.timer > self.rate then
        self.timer = 0
        self:acquireTarget()
    end
end

-----------------------------------------------------------------

function AI:move(dt)
    if love.keyboard.isDown("o") then 
        self.y = self.y - self.speed * dt
     elseif love.keyboard.isDown("l") then 
        self.y = self.y + self.speed * dt
     end
end

-----------------------------------------------------------------

function AI:acquireTarget()
    if Ball.y + Ball.height < self.y then
        self.yVel = -self.speed
    elseif Ball.y > self.y + self.height then
        self.yVel = self.speed
    else 
        self.yVel = 0
    end
end

-----------------------------------------------------------------

function AI:checkBoundaries()
    if self.y < 0 then 
       self.y = 0 
    elseif self.y + self.height > love.graphics.getHeight() then 
       self.y = love.graphics.getHeight() - self.height 
    end
 end

 -----------------------------------------------------------------

function AI:draw()
    love.graphics.draw(self.img, self.x, self.y) 
end