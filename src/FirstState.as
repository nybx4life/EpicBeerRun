package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Josue Vicioso
	 */
	public class FirstState extends FlxState 
	{
		public var player:Player = new Player(32, 32);
		public var level:TestLevel = new TestLevel();
		public var text:FlxText = new FlxText(0, 0, 100);
		override public function create():void
		{
			
			this.add(player);
			this.add(level);
			this.add(text);
			FlxG.follow(player);
			FlxG.followAdjust(1, 0);
			FlxG.showBounds = true;
			
		}
		
		override public function update():void
		{
			super.update();
			FlxU.collide(player, level);
			text.y = player.y - 64;
			/*if (FlxG.keys.SPACE && true)
			{
				player.jump();
			}*/
			
			player.jumpOnKey(FlxG.keys.SPACE);
			player.moveOnKeys(FlxG.keys.LEFT, FlxG.keys.RIGHT);
		}
	}

}