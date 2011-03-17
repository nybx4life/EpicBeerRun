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
		public var beers:FlxGroup = new FlxGroup();
		override public function create():void
		{
			
			this.add(player);
			this.add(level);
			this.add(text);
			this.add(beers);
			FlxG.follow(player);
			FlxG.followAdjust(1, 0);
			FlxG.showBounds = true;
			
			for (var y:uint = 0; y < 16; y++)
			{
				for (var x:uint = 0; x < 16; x++)
				{
					var beer:Beer = new Beer(x * 16, y * 16);
					if (!FlxU.collide(level, beer) && Math.random() < .125)
					{
						beers.add(beer);
					}
				}
			}
			
		}
		
		override public function update():void
		{
			super.update();
			FlxU.collide(player, level);
			//FlxU.collide(player, beers);
			text.y = player.y - 64;
			/*if (FlxG.keys.SPACE && true)
			{
				player.jump();
			}*/
			text.text = FlxU.overlap(beers, player, getBeer).toString();
			player.jumpOnKey(FlxG.keys.SPACE);
			player.moveOnKeys(FlxG.keys.LEFT, FlxG.keys.RIGHT);
		}
		
		
		public function getBeer(beer:Beer, player:Player):void
		{
			beer.kill();
			
		}
	}

}