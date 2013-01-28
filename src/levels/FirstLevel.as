package levels
{
	
	import events.SceneChangeEvent;
	import starling.events.Event;
	import starling.text.TextField;
	import starling.textures.Texture;
	
	/**
	 * ...
	 * @author Tiffus mailto : el.tiffus@gmail.com
	 */
	public class FirstLevel extends AbstractLevel
	{
		
		public function FirstLevel()
		{
		
		}
		
		override protected function _init(e:Event):void
		{
			super._init(e);
			GlobalContent.levelLoader.loadLevel(0);
		}
		
		override protected function _onXMLLevelLoaded(e:Event):void
		{
			_textureBG = Texture.fromBitmap(new Assets.bg1);
			_texture = Texture.fromBitmap(new Assets.planetAsset());
			
			super._onXMLLevelLoaded(e);
			
			//Text
			var text:TextField = new TextField(200, 50, "Anger", "Verdana", 36, 0xFFFFFF);
			text.alpha = 0.5;
			text.x = text.y = 10;
			addChild(text);
		}
		
		override protected function onFinishHide():void
		{
			var event:SceneChangeEvent = new SceneChangeEvent(SceneChangeEvent.CHANGE);
			//event.nextSceneName = GlobalContent.SCREEN_TITLE;
			event.nextSceneName = GlobalContent.SCREEN_SECOND;
			dispatchEvent(event);
		}
	
	}

}