critchance = irandom_range(0,100)
if critchance <= global.crit
    {
    global.criticalhit = true
    }

if global.criticalhit == true
    {
    critical = global.critdmg
    }
else 
    {
    critical = 1
    }

dmg = floor(argument0*global.dmg*critical);

return dmg
