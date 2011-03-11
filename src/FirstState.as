package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Josue Vicioso
	 */
	public class FirstState extends FlxState 
	{
		
		override public function create():void
		{
			this.add(new FlxText(16, 16, 128, "Test"));
		}
	}

}