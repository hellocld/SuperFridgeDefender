package  
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	
	/**
	 * ...
	 * @author cld
	 */
	public class Food extends FlxSprite 
	{
		public var speed:int;
		public function Food() 
		{
			
		}
		
		override public function update():void
		{
			super.update();
			x += speed;
			
			if (x < -32)
			{
				Registry.scoreSound.play();
				Registry.currentScore += 10;
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
			var pickSprite:int = int(Math.random() * 5);
			
			switch(pickSprite)
			{
				case 1:
					loadGraphic(Registry.PizzaPNG, false, false, 32, 32);
					break;
				case 2:
					loadGraphic(Registry.PicklePNG, false, false, 32, 32);
					break;
				case 3:
					loadGraphic(Registry.BurgerPNG, false, false, 32, 32);
					break;
				case 4:
					loadGraphic(Registry.WingPNG, false, false, 32, 32);
					break;
				default:
					loadGraphic(Registry.BeerPNG, false, false, 32, 32);
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