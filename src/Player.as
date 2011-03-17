package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Josue Vicioso
	 */
	public class Player extends FlxSprite 
	{
		public static const GRAVITY:Number		=	1024;
		public static const MAX_RUN:Number		=	256;
		public static const ACCEL:Number		=	512;
		public static const MAX_FALL:Number		=	2048;
		public static const JUMP_SPEED:Number	=	256;
		public static const JUMP_BOOST:uint		=	4;
		
		private var holdjump:Boolean = false;
		public function Player(x:uint, y:uint) 
		{
			super(x, y);
			this.createGraphic(16, 32, 0xff0000ff);
			this.solid = true;
			this.maxVelocity = new FlxPoint(MAX_RUN, MAX_FALL);
			this.acceleration.y = GRAVITY;
			this.drag.x = ACCEL;
		}
		
		override public function update():void
		{
			super.update();
			
		}
		public function jumpOnKey(key:Boolean):void
		{
			
			if (key && this.velocity.y <= 0)
			{
				if (this.onFloor)
				{
					this.velocity.y = -JUMP_SPEED;
					holdjump = true;
				}
				if (holdjump)
				{
					this.acceleration.y = GRAVITY / JUMP_BOOST;
				}
			}
			else
			{
				this.acceleration.y = GRAVITY;
				holdjump = false;
			}
		}
		public function moveOnKeys(leftKey:Boolean, rightKey:Boolean):void
		{
		
			if (leftKey && !rightKey)
				this.acceleration.x = -ACCEL;
			else if (rightKey && !leftKey)
				this.acceleration.x = ACCEL;
			else
				this.acceleration.x = 0;
				
		}
	}

}