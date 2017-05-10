package ro.ciacob.desktop.skins.cherry {
	
	import mx.controls.Image;
	import mx.core.UIComponent;
	import mx.states.SetProperty;
	import mx.states.State;
	
	/**
	 *  The skin for the close button in the TitleBar
	 *  of a WindowedApplication or Window.
	 * 
	 *  
	 *  @langversion 3.0
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public class ImageButtonSkin extends UIComponent {
		
		protected function get defaultWidth () : Number {
			return 21;
		}
		
		protected function get defaultHeight () : Number {
			return 21;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Class assets
		//
		//--------------------------------------------------------------------------
		
		protected function get upSkin () : Class {
			return null;
		}
		
		protected function get overSkin () : Class {
			return null;
		}
		
		protected function get downSkin () : Class {
			return null;
		}
		
		protected function get disabledSkin () : Class {
			return null;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion AIR 1.1
		 *  @productversion Flex 3
		 */
		public function ImageButtonSkin() {
			super();
		}
		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  @private
		 */
		private var skinImage:Image;
		
		//--------------------------------------------------------------------------
		//
		//  Overridden properties: UIComponent
		//
		//--------------------------------------------------------------------------
		
		//----------------------------------
		//  measuredHeight
		//----------------------------------
		
		/**
		 *  @private
		 */
		override public function get measuredHeight():Number {
			if (skinImage.measuredHeight) {
				return skinImage.measuredHeight;
			} else {
				return defaultHeight;
			}
		}
		
		//----------------------------------
		//  measuredWidth
		//----------------------------------
		
		/**
		 *  @private
		 */
		override public function get measuredWidth():Number {
			if (skinImage.measuredWidth) {
				return skinImage.measuredWidth;
			} else {
				return defaultWidth;
			}
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overridden methods: UIComponent
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  @private
		 */
		override protected function createChildren():void {
			skinImage = new Image();
			addChild(skinImage);
			initializeStates();
		}
		
		override protected function updateDisplayList (w:Number, h:Number):void {
			super.updateDisplayList (w, h);
			skinImage.setActualSize(measuredWidth, measuredHeight);
			skinImage.move (0, 0);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  @private
		 */
		private function initializeStates():void {
			var upState:State = new State();
			upState.name = "up";
			var upProp:SetProperty = new SetProperty();
			upProp.name = "source";
			upProp.target = skinImage;
			upProp.value = upSkin;
			upState.overrides.push(upProp);
			states.push(upState);
			
			var overState:State = new State();
			overState.name = "over";
			var overProp:SetProperty = new SetProperty();
			overProp.name = "source";
			overProp.target = skinImage;
			overProp.value = overSkin;
			overState.overrides.push(overProp);
			states.push(overState);
			
			var downState:State = new State();
			downState.name = "down";
			var downProp:SetProperty = new SetProperty();
			downProp.name = "source";
			downProp.target = skinImage;
			downProp.value = downSkin;
			downState.overrides.push(downProp);
			states.push(downState);
			
			var disabledState : State = new State;
			disabledState.name = 'disabled';
			var disabledProp:SetProperty = new SetProperty;
			disabledProp.name = 'source';
			disabledProp.target = skinImage;
			disabledProp.value = disabledSkin;
			disabledState.overrides.push (disabledProp);
			states.push (disabledState);
			
		}
	}
	
}
