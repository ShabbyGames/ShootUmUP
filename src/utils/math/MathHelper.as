package utils.math 
{
	public class MathHelper 
	{
		public static function nextInt(max:int):int
		{
			return Math.floor(Math.random() * max)
		}
		
		public static function rangeInt(min:int, max:int):int
		{
			return min + Math.floor(Math.random() * (max - min));
		}
		
		public static function rangeNumber(min:Number, max:Number):Number
		{
			return min + (Math.random() * (max - min));
		}
		
		public static function getNextX(x:Number, direction:Number, speed:Number):Number
		{
  			return x + (speed * Math.cos(direction * Math.PI / 180.0));
		}
		
		public static function getNextY(y:Number, direction:Number, speed:Number):Number
		{
   			return y + (speed * Math.sin(direction * Math.PI / 180.0));
 		}
		
		public static function getDistance(x1:Number, y1:Number, x2:Number, y2:Number):Number
		{
   			return Math.sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2));
  		}
		
		public static function getDegreeFromPoint(x1:Number, y1:Number, x2:Number, y2:Number):Number
		{
   			return Math.atan2((y2 - y1), (x2 - x1)) * 180 / Math.PI;
  		}
	}
}