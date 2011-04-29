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
			/*[Embed(source = "level.png")] var Level:Class;
			[Embed(source = "tiles.png")] var Tiles:Class;
			this.loadMap(FlxTilemap.pngToCSV(Level), Tiles);
			this.solid = true;*/
			[Embed(source="mapCSV_Group1_Map3.csv", mimeType="application/octet-stream")] var CSV_Group1Map3:Class;
			[Embed(source = "ebr_tileset02.png")] var Img_Group1Map3:Class;
			
			this.loadMap( new CSV_Group1Map3, Img_Group1Map3, 32, 32 );
		}
		
	}

}