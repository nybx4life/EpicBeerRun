package
{
	import org.flixel.FlxText;
	import org.flixel.FlxG;
	
	public class Timer extends FlxText {
		
		private var currentTime:Number = 60;
		private var timerLimit:Number = 0;
		
		public function Timer(x:uint, y:uint, z:Number) {
			super(x, y, 100, this.toString(), true);
			this.timerLimit = z;
		}
		
		override public function update():void 
		{
			super.update();
			currentTime -= FlxG.elapsed;
		}
		
	
		
		public function addTime(x:Number):void {
			if (this.currentTime + x > timerLimit) {
				this.currentTime = timerLimit;
			}
			else {
				this.currentTime += x;
			}
		}
		
		public function getTime():Number {
			return this.currentTime;
		}
		
		override public function toString():String {
			return "Timeleft: " + this.currentTime.toFixed(2).toString();
		}
	}
}