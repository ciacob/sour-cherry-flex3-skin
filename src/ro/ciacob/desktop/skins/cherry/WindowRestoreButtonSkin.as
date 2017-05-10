package ro.ciacob.desktop.skins.cherry {
	
	public class WindowRestoreButtonSkin extends ImageButtonSkin {
		
		//--------------------------------------------------------------------------
		//
		//  Class assets
		//
		//--------------------------------------------------------------------------
		
		[Embed(source="../../../../../SourCherry/Window/restore-up.png")]
		private const UP_SKIN:Class;
		
		[Embed(source="../../../../../SourCherry/Window/restore-over.png")]
		private const OVER_SKIN:Class;
		
		[Embed(source="../../../../../SourCherry/Window/restore-down.png")]
		private const DOWN_SKIN:Class;
		
		[Embed(source="../../../../../SourCherry/Window/restore-disabled.png")]
		private const DISABLED_SKIN:Class;
		
		override protected function get upSkin() : Class {
			return UP_SKIN;
		}
		
		override protected function get overSkin() : Class {
			return OVER_SKIN;
		}
		
		override protected function get downSkin() : Class {
			return DOWN_SKIN;
		}
		
		override protected function get disabledSkin() : Class {
			return DISABLED_SKIN;
		}
		
	}
}