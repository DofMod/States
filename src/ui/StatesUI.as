package ui
{
	import d2api.DataApi;
	import d2api.FightApi;
	import d2api.SystemApi;
	import d2api.UiApi;
	import d2components.ButtonContainer;
	import d2components.GraphicContainer;
	import d2components.Grid;
	import d2data.Effect;
	import d2enums.ComponentHookList;
	import enums.ConfigEnum;
	import flash.geom.Rectangle;
	
	/**
	 * Main ui class.
	 * 
	 * @author Relena
	 */
	public class StatesUI
	{
		//::///////////////////////////////////////////////////////////
		//::// Variables
		//::///////////////////////////////////////////////////////////
		
		// Some constants
		private static const BANNER_HEIGHT:int = 160;
		
		// APIs
		public var sysApi:SystemApi;
		public var uiApi:UiApi;
		public var fightApi:FightApi;
		public var dataApi:DataApi;
		
		// Modules
		[Module (name="Ankama_Common")]
		public var modCommon : Object;
		
		// Components
		public var ctn_main:GraphicContainer;
		
		public var tx_background:GraphicContainer;
		
		public var btn_close:ButtonContainer;
		public var btn_config:ButtonContainer;
		
		public var grid_states:Grid;
		
		// Some globals
		public var _ctn_empty:String;
		public var _ctn_title:String;
		public var _ctn_description:String;
		
		//::///////////////////////////////////////////////////////////
		//::// Public methods
		//::///////////////////////////////////////////////////////////
		
		/**
		 * Main ui function (entry point).
		 * 
		 * @param	params
		 */
		public function main(params:Object):void
		{
			_ctn_empty = uiApi.me().getConstant("emptyName");
			_ctn_title = uiApi.me().getConstant("titleName");
			_ctn_description = uiApi.me().getConstant("descriptionName");
			
			initPosition();
			initGrid();
			
			uiApi.addComponentHook(btn_close, ComponentHookList.ON_PRESS); // Hack to disable the drag of the UI
			uiApi.addComponentHook(btn_close, ComponentHookList.ON_RELEASE);
			
			uiApi.addComponentHook(btn_config, ComponentHookList.ON_PRESS); // Hack to disable the drag of the UI
			uiApi.addComponentHook(btn_config, ComponentHookList.ON_RELEASE);
			
			uiApi.addComponentHook(ctn_main, ComponentHookList.ON_PRESS);
			uiApi.addComponentHook(ctn_main, ComponentHookList.ON_RELEASE);
			uiApi.addComponentHook(ctn_main, ComponentHookList.ON_RELEASE_OUTSIDE);
		}
		
		/**
		 * Update grid line.
		 * 
		 * @param	data	Data associated to the grid line.
		 * @param	componentsRef	Link to the components of the grid line.
		 * @param	selected	Is the line selected ?
		 * @param	param4	(no idea what is that)
		 */
		public function updateEntry(data:Object, componentsRef:Object, selected:Boolean, param4:uint) : void
		{
			switch (getLineType(data, param4))
			{
				case _ctn_empty:
					break;
				case _ctn_title:
					componentsRef.lb_title.text = (data as Effect).description;
					
					break;
				case _ctn_description:
					componentsRef.lb_description.text = data.toString();
					
					break;
			}
		}
		
		/**
		 * Select the containe to display in the grid line.
		 * 
		 * @param	data	Data of the line (Info).
		 * @param	param2	(no idea what is that).
		 * @return	The name of the container use.
		 */
		public function getLineType(data:Object, param2:uint):String
		{
			if (!data)
			{
				return _ctn_empty;
			}
			else if (data is Effect)
			{
				return _ctn_title;
			}
			else
			{
				return _ctn_description;
			}
		}
		
		//::///////////////////////////////////////////////////////////
		//::// Events
		//::///////////////////////////////////////////////////////////
		
		/**
		 * Mouse rooover callback.
		 * 
		 * @param	target
		 */
		public function onRollOver(target:Object):void
		{
			switch (target)
			{
				default:
					break;
			}
		}
		
		/**
		 * Mouse rollout callback.
		 * 
		 * @param	target
		 */
		public function onRollOut(target:Object):void
		{
			uiApi.hideTooltip();
		}
		
		/**
		 * Mouse press callback
		 * 
		 * @param	target
		 */
		public function onPress(target:Object):void
		{
			switch(target)
			{
				case ctn_main:
					dragUiStart();
					
					break;
			}
		}
		
		/**
		 * Mouse release callback.
		 * 
		 * @param	target
		 */
		public function onRelease(target:Object):void
		{
			switch (target)
			{
				case btn_close:
					unloadUI();
					
					break;
				case btn_config:
					modCommon.openOptionMenu(false, "module_states");
					
					break;
				case ctn_main:
					dragUiStop();
					
					break;
				default:
					break;
			}
		}
		
		/**
		 * Mouse release outside callback.
		 * 
		 * @param	target
		 */
		public function onReleaseOutside(target:Object) :  void
		{
			switch(target)
			{
				case ctn_main:
					dragUiStop();
					
					break;
			}
		}
		
		//::///////////////////////////////////////////////////////////
		//::// Private methods
		//::///////////////////////////////////////////////////////////
		
		private function initPosition():void
		{
			var position:Array = sysApi.getData(ConfigEnum.POSITION);
			if (position)
			{
				ctn_main.x = position[0];
				ctn_main.y = position[1];
			}
		}
		
		private function initGrid(selectedId:int = -1):void
		{
			var statesId:Object = dataApi.queryEquals(Effect, "id", 950);
			var statesEffect:Object = dataApi.queryReturnInstance(Effect, statesId);
			
			grid_states.dataProvider = statesEffect;
		}
		
		private function dragUiStart() : void
		{
			ctn_main.startDrag(
					false,
					new Rectangle(
							0,
							0,
							uiApi.getStageWidth() - tx_background.width,
							uiApi.getStageHeight() - tx_background.height - BANNER_HEIGHT)
					);
		}
		
		private function dragUiStop() : void
		{
			ctn_main.stopDrag();
			
			sysApi.setData(ConfigEnum.POSITION, [ctn_main.x, ctn_main.y]);
		}
		
		/**
		 * Unload the UI.
		 */
		private function unloadUI():void
		{
			uiApi.unloadUi(uiApi.me().name);
		}
	}
}
