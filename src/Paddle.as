package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author cld
	 */
	public class Paddle extends FlxSprite 
	{
		protected var speed:Number;
		public function Paddle() 
		{
			speed = 5;
			y = 144;
			x = 32;
			
			loadGraphic(Registry.PaddlePNG, false, false, 8, 32, false);
		}
		
		override public function update():void
		{
			super.update();
			if (FlxG.keys.pressed("UP")) 
			{
				y -= speed;
			}
			if (FlxG.keys.pressed("DOWN"))
			{
				y += speed;
			}
		}
	}

}