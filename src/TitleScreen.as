package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author cld
	 */
	public class TitleScreen extends FlxState 
	{
		public function TitleScreen() 
		{
			
		}
		
		override public function create():void
		{
			FlxG.worldBounds.make(0, 0, 320, 240);
		}
		
		override public function update():void
		{
			var tempSprite:FlxSprite = new FlxSprite(0, 0, Registry.TitlePNG);
			add(tempSprite);
			
			if (FlxG.keys.justPressed("X"))
			{
				var tempAudio:FlxSound = new FlxSound();
				tempAudio.loadEmbedded(Registry.GameStartWAV, false, true);
				tempAudio.play();
				FlxG.fade(0xff000000, 1, startGame);
			}
		}
		
		public function startGame():void
		{
			FlxG.switchState(new Game);
		}
		
	}

}