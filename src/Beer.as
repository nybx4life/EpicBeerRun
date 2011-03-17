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
			this.createGraphic(4, 8);
			this.origin = new FlxPoint( -20, -8);
			this.solid = true;
		}
		
		
		override public function kill():void
		{
			this.visible = false;
			this.solid = false;
		}
	}

}