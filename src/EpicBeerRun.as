package  
{
	import org.flixel.FlxGame;
	[SWF(width="640", height="480", backgroundColor="#000000")]
	/**
	 * Main class for Epic Beer Run
	 * @author Josue Vicioso
	 */
	public class EpicBeerRun extends FlxGame 
	{
		
		public function EpicBeerRun() 
		{
			super(320, 240, FirstState, 2);
		}
		
		
	}

}