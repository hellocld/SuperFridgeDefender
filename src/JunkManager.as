package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author cld
	 */
	public class JunkManager extends FlxGroup 
	{
		
		public function JunkManager():void 
		{
			maxSize = 20;
			for (var x:int = 0; x < 20; x++)
			{
				var tempJunk:Junk = new Junk();
				tempJunk.kill();
				add(tempJunk);
			}
		}
		
		public function makeJunk():void
		{
			if (getFirstAvailable())
			{
				Junk(getFirstAvailable()).init();;
			}
		}
		
	}

}