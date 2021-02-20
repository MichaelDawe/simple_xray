This is intended as a debuging mod to help with fine tuning ore generation,
I made it when I was first playing about with my opal ore (not published, I plan to but no promises)
so I could actually see what was going on with the ore generation.  
I extended it to optionally support the nether mod because I am also playing 
with expanding the valuables you can find in the nether.  

I added a green post_effect_color for default stone and a red one for desert stone,
also a purple one for nether rack and a blue one for deep nether rack.

WARNING - Known issues are as follows.

The server can hang when exiting with a long stream of this error:
ERROR[Server]: Server::ActiveObjectMgr::addActiveObjectRaw(): no free id available
This (I believe) is due to the sand and gravel and other falling blocks falling
through the rock and forming insane numbers of objects and it seems the Minetest
engine can only support a finite number.

The server can also be slow to shut down without errors and (I think) this is due
to more mapblocks being generated than normal because of the airlike nature I've
assigned to the stone.

The server will also glitch for a second every so often with this error on the
console.
WARNING[Main]: before createPlayingSoundAt: invalid name
WARNING[Main]: createPlayingSoundAt: out of memory
This is (I think) again due to trying to play sounds for many many falling blocks

The last error is shortly followed by another similar to:
ERROR[Server]: suspiciously large amount of objects detected: 131 in (-5,2,-10); removing all of them.
and then the game speeds up again, with a little less sand :)

The mod also seems to stop the spawning of trees and decorations on the map, I
honestly have no idea how, though this doesn't interfere with its intended purpose.

All testing done in Minetest 5.3.0 on windows 10 20H2 and with the V7 mapgen.

If you find any other bugs please message me so I can list them here, I probably won't try to 
fix them though as this is intended as a debuging mod anyways.

If anyone has a fix please contact me and I'll update the modpack.
I fear that just making the blocks transparent would be too much on the graphics
engine which is why I used the airlike attribute.

On the whole though this simple mod really helped me with my ores!

Best used in combination with my other mod ambient_light, which lights up blocks underground.

Hope you find it useful too :)
