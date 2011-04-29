package  
{
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Josue Vicioso
	 */
	public class Beer extends FlxSprite 
	{
		
		public function Beer(x:uint, y:uint) 
		{
			super(x, y);
			[Embed(source = "assets/beer1.png")] var Img_Beer1:Class;
			this.loadGraphic(Img_Beer1, false, false, 8, 24, false);
			this.origin = new FlxPoint( -6, -4);
			this.solid = true;
		}
		
		
		override public function kill():void
		{
			this.visible = false;
			this.solid = false;
		}
	}

}