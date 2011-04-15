package  
{
	import flash.net.FileReference;
	import org.flixel.FlxTilemap;
	
	/**
	 * ...
	 * @author Josue Vicioso
	 */
	public class TestLevel extends FlxTilemap 
	{
		
		public function TestLevel() 
		{
			[Embed(source = "level.png")] var Level:Class;
			[Embed(source = "tiles.png")] var Tiles:Class;
			this.loadMap(FlxTilemap.pngToCSV(Level), Tiles);
			this.solid = true;
		}
		
	}

}