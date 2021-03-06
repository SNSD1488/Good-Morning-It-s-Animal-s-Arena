local Friendly = class('Friendly', Component)

function Friendly:update(dt)
    self:handleBulletCollision()
end

function Friendly:handleBulletCollision()
    local items, len = self.parent:queryCollision(function(other)
        if other.entity == player then
            return false
        end

        return other.entity.friendly == false and other.entity:isInstanceOf(Bullet)
    end)

    for i,item in ipairs(items) do
        if self.parent.hp <= 0 then
            return
        end

        Util.sound('playerHurt')

        self.parent:takeDamage(item.entity.damage)

        item.entity:hitTarget()
    end
end

return Friendly
