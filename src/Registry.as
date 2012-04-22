package  
{
	/**
	 * ...
	 * @author cld
	 */
	import org.flixel.*;
	public class Registry 
	{
		//load up all the graphics
		[Embed(source = "../data/gfx/background.png")] public static var BackgroundPNG:Class;
		[Embed(source = "../data/gfx/title_screen.png")] public static var TitlePNG:Class;
		
		[Embed(source = "../data/gfx/paddle.png")] public static var PaddlePNG:Class;
		
		[Embed(source = "../data/gfx/beer.png")] public static var BeerPNG:Class;
		[Embed(source = "../data/gfx/burger.png")] public static var BurgerPNG:Class;
		[Embed(source = "../data/gfx/pickle.png")] public static var PicklePNG:Class;
		[Embed(source = "../data/gfx/pizza.png")] public static var PizzaPNG:Class;
		[Embed(source = "../data/gfx/wing.png")] public static var WingPNG:Class;
		
		[Embed(source = "../data/gfx/book.png")] public static var BookPNG:Class;
		[Embed(source = "../data/gfx/sign.png")] public static var SignPNG:Class;
		[Embed(source = "../data/gfx/kitty.png")] public static var KittyPNG:Class;
		[Embed(source = "../data/gfx/tire.png")] public static var TirePNG:Class;
		
		//load up the sound effects
		[Embed(source="../data/sfx/gamestart.mp3")] public static var GameStartWAV:Class;
		[Embed(source = "../data/sfx/gameover.mp3")] public static var GameOverWAV:Class;
		[Embed(source = "../data/sfx/score_food.mp3")] public static var ScoreWAV:Class;
		[Embed(source = "../data/sfx/hit_junk.mp3")] public static var DeflectWAV:Class;
		[Embed(source = "../data/sfx/junk_fridge.mp3")] public static var HurtWAV:Class;
		
		//make the score variables
		public static var currentScore:Number = 0;
		public static var highScore:Number = 0;
		
		//the audio player
		public static var hurtSound:FlxSound;
		public static var scoreSound:FlxSound;
		public static var deflectSound:FlxSound;
		
		//group for the food and for the junk
		public static var foodGroup:FoodManager;
		public static var junkGroup:JunkManager;
		
		//the player
		public static var player:Paddle;
				
		public function Registry() 
		{
			
		}
		
	}

}