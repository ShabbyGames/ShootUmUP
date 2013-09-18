package utils.utils {
	import com.snakybo.as3framework.math.Vector3f;
	
	public class ColorConverter {
		private var r:uint;
		private var g:uint;
		private var b:uint;
	
		public function ColorConverter(rgb:Vector3f):void {
			this.r = rgb.getX() * 255;
			this.g = rgb.getY() * 255;
			this.b = rgb.getZ() * 255;
		}
		
		/** Covert to AS3 Hex */
		public function convertToHex():uint {
			return ((r << 16) | (g << 8) | b);
		}
	}
}
