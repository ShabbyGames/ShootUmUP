package 
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class Main extends Sprite 
	{
		public static var STAGE:Stage;
		private var level:Level;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			STAGE = this.stage;
			level = new Level();
			
		}
		
	}
	
}