package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author cld
	 */
	public class Game extends FlxState 
	{
		protected var score:FlxText;
		protected var hiScore:FlxText;
		protected var background:FlxSprite;
		
		public function Game() 
		{
			FlxG.worldBounds.make(0, 0, 320, 240);
			background = new FlxSprite(0, 0, Registry.BackgroundPNG);
			add(background);
			
			Registry.foodGroup = new FoodManager;
			Registry.junkGroup = new JunkManager;
			
			add(Registry.foodGroup);
			add(Registry.junkGroup);
			
			Registry.player = new Paddle();
			add(Registry.player);
			score = new FlxText(8, 8, 300, "SCORE: " + Registry.currentScore.toString());
			hiScore = new FlxText(8, 16, 300, "HI SCORE: " + Registry.highScore.toString());
			
			Registry.hurtSound = new FlxSound();
			Registry.hurtSound.loadEmbedded(Registry.HurtWAV, false, false);
			Registry.scoreSound = new FlxSound();
			Registry.scoreSound.loadEmbedded(Registry.ScoreWAV, false, false);
			Registry.deflectSound = new FlxSound();
			Registry.deflectSound.loadEmbedded(Registry.DeflectWAV, false, false);
		}
		
		override public function update():void
		{
			super.update();
			score.text = "SCORE: " + Registry.currentScore.toString();
			hiScore.text = "HI SCORE: " + Registry.highScore.toString();
			
			//code to make the food
			if (int(Math.random()*10000) > 9800)
			{
				
				Registry.foodGroup.makeFood();
			}
			if (int(Math.random()*10000) > 9800)
			{
				Registry.junkGroup.makeJunk();
			}
			FlxG.collide(Registry.player, Registry.foodGroup, foodHit);
			FlxG.collide(Registry.player, Registry.junkGroup, junkHit);
			
			if (Registry.currentScore > Registry.highScore)
			{
				Registry.highScore = Registry.currentScore;
			}
			
			if (Registry.currentScore < 0)
			{
				Registry.currentScore = 0;
			}
			
			if (FlxG.keys.justPressed("Q"))
			{
				FlxG.fade(0xff000000, 1, gameQuit);
			}
			
			add(score);
			add(hiScore);
		}
		
		public function foodHit(p:Paddle, o:Food):void
		{
			Registry.currentScore -= 5;
			o.hit();
		}
		
		public function junkHit(p:Paddle, j:Junk):void
		{
			Registry.currentScore += 5;
			j.hit();
		}
		
		public function gameQuit():void
		{
			FlxG.switchState(new TitleScreen);
		}
	}

}