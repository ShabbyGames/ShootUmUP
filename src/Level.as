package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Jesse Stam
	 */
	public class Level extends Sprite
	{
		
		public function Level() 
		{
			this.addEventListener(Event.ENTER_FRAME, MainLoop);
		}
		
		private function MainLoop(e:Event):void 
		{
			
		}
		
	}

}