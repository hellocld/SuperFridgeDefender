package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author cld
	 */
	public class FoodManager extends FlxGroup 
	{
		
		public function FoodManager():void 
		{
			maxSize = 20;
			for (var x:int = 0; x < 20; x++)
			{
				var tempFood:Food = new Food();
				tempFood.kill();
				add(tempFood);
			}
		}
		
		public function makeFood():void
		{
			if (getFirstAvailable())
			{
				Food(getFirstAvailable()).init();;
			}
		}
		
	}

}