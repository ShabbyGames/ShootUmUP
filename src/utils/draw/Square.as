package utils.draw
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	
	public class Square extends Sprite
	{
		public var color:uint;
		public var h:Number;
		public var w:Number;
		public var drag:Boolean;
		public var linewidth:Number;
		
		public function Square(x:Number, y:Number, h:Number, w:Number, color:uint, linewidth:Number=0):void
		{
			this.drag = drag;
			this.h = h;
			this.w = w;
			this.color = color;
			this.x = x;
			this.y = y;
			this.linewidth = linewidth;
			
			if (this.linewidth != 0)
			{
				this.graphics.lineStyle(this.linewidth);
			}
			
			this.graphics.beginFill(this.color);
			this.graphics.drawRect(0, 0, this.w, this.h);
		}
	}

}