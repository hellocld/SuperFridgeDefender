package  
{
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author cld
	 */
	public class Junk extends FlxSprite 
	{
		public var speed:int;
		
		public function Junk() 
		{
		}
		
		override public function update():void
		{
			super.update();
			x += speed;
			
			if (x < -32)
			{
				Registry.hurtSound.play();
				Registry.currentScore -= 20;
				this.exists = false;
			}
			
			if (x > 400)
			{
				this.exists = false;
			}
			
		}
		
		public function init():void
		{
			exists = true;
			var pickSprite:int = int(Math.random() * 4);
			
			switch(pickSprite)
			{
				case 1:
					loadGraphic(Registry.BookPNG, false, false, 32, 32);
					break;
				case 2:
					loadGraphic(Registry.KittyPNG, false, false, 32, 32);
					break;
				case 3:
					loadGraphic(Registry.TirePNG, false, false, 32, 32);
					break;
				default:
					loadGraphic(Registry.SignPNG, false, false, 32, 32);
					break;
			}
			
			speed = (int((Math.random() * 5) + 1)) * -1;
			x = 320;
			y = int(Math.random() * 288);
		}
		
		public function hit():void
		{
			Registry.deflectSound.play();
			speed = Math.abs(speed);
		}
		
	}

}