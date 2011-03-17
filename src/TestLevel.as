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
			[Embed(source = "level.png")] var level:Class;
			[Embed(source = "tiles.png")] var tiles:Class;
			this.loadMap(FlxTilemap.pngToCSV(level), tiles, 16, 16);
		}
		
	}

}