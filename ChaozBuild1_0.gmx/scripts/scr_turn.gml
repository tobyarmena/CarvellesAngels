var facingDir = direction;
var targetDir = argument0;//obj_player

var facingMinusTarget = facingDir - targetDir;
var angleDiff = facingMinusTarget;


if(abs(facingMinusTarget) > 180)
{
    if(facingDir > targetDir)
    {
        angleDiff = -1 * ((360 - facingDir) + targetDir);
    }
    else
    {
        angleDiff = (360 - targetDir) + facingDir;
    }
}
if(angleDiff<0)
    {
        direction += argument1//speed
    }
if(angleDiff>0)
    {
        direction -= argument1
    }
if(abs(angleDiff)<argument1)
    {
        direction = argument0
    }
