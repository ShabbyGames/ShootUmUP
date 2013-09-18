package utils.sound {
	import flash.events.Event;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	
	public class SoundHandler {		
		private var soundChannel:SoundChannel;
		private var soundTransform:SoundTransform;
		private var sound:Sound;
		
		private var soundVolume:uint = 1;
		
		public function SoundHandler(sound:Sound):void {
			this.soundChannel = new SoundChannel();
			this.soundTransform = new SoundTransform();
			this.sound = sound;
		}
		
		/** Play sound */
		public function playSound():void {
			if(soundVolume > 0) {
				soundChannel = sound.play();
				soundTransform.volume = soundVolume;
				
				soundChannel.soundTransform = soundTransform;
			}
		}
		
		/** Loop sound */
		public function loopSound(timesToPlay:uint = 0, timesPlayed:uint = 1):void {
			function loop(e:Event):void {
				if(timesPlayed < timesToPlay || timesToPlay == 0) {
					timesPlayed++;
					loopSound(timesToPlay, timesPlayed);
				}
			}
			
			if(soundVolume > 0) {
				playSound();
				
				soundChannel.addEventListener(Event.SOUND_COMPLETE, loop);
			}
		}
		
		/** Stop sound */
		public function stopSound():void {
			soundChannel.stop();
		}
	}
}