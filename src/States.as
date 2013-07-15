package
{
	import d2api.DataApi;
	import d2api.FightApi;
	import d2api.SystemApi;
	import d2api.UiApi;
	import d2data.ContextMenuData;
	import d2enums.FightEventEnum;
	import d2hooks.FightEvent;
	import d2hooks.OpeningContextMenu;
	import flash.display.Sprite;
	import flash.utils.getQualifiedClassName;
	import ui.ConfigUI;
	import ui.StatesUI;
	
	/**
	 * Main module class (entry point).
	 * 
	 * @author Relena
	 */
	public class States extends Sprite
	{
		//::///////////////////////////////////////////////////////////
		//::// Variables
		//::///////////////////////////////////////////////////////////
		
		// UI include
		private const includes:Array = [StatesUI, ConfigUI];
		
		// Modules
		[Module (name="Ankama_ContextMenu")]
		public var modContextMenu : Object;
		
		[Module (name="Ankama_Common")]
		public var modCommon : Object;
		
		// Some constants
		private static const UI_NAME:String = "states";
		private static const UI_INSTANCE_NAME:String = "states";
		
		// APIs
		public var uiApi:UiApi;
		public var sysApi:SystemApi;
		public var fightApi:FightApi;
		public var dataApi:DataApi;
		
		// Some globals
		
		//::///////////////////////////////////////////////////////////
		//::// Public methods
		//::///////////////////////////////////////////////////////////
		
		public function main():void
		{
			sysApi.addHook(OpeningContextMenu, onOpeningContextMenu);
			sysApi.addHook(FightEvent, onFightEvent);
			
			modCommon.addOptionItem("module_states", "(M) States", "Options du module States", "States::config");
		}
		
		//::///////////////////////////////////////////////////////////
		//::// Events
		//::///////////////////////////////////////////////////////////
		
		private function onOpeningContextMenu(data:Object):void
		{
			if (data && (data is ContextMenuData))
			{
				var contextData:ContextMenuData = data as ContextMenuData;
				if (contextData.makerName == "fightWorld" || contextData.makerName == "world")
				{
					// createContextMenuItemObject(label, callback, callbackArgs, disabled, childs, selected, ...)
					var item1:* = modContextMenu.createContextMenuItemObject("States", statesCallback, null, false, null, isLoadedUi());
					
					appendToItemModule(contextData, item1);
				}
			}
		}
		
		/**
		 * This callback is process when the FightEvent hook is raised.
		 *
		 * @param	eventName	Name of the current event.
		 * @param	params		Parameters of the current event.
		 * @param	targetList	(not used).
		 */
		private function onFightEvent(eventName:String, params:Object, targetList:Object = null):void
		{
			switch (eventName)
			{
				case FightEventEnum.FIGHTER_ENTERING_STATE:
					break;
			}
		}
		
		//::///////////////////////////////////////////////////////////
		//::// Private methods
		//::///////////////////////////////////////////////////////////
		
		private function appendToItemModule(data:ContextMenuData, ... items):void
		{
			var itemModule:* = null;
			
			for each (var item:*in data.content)
			{
				if (getQualifiedClassName(item) == "contextMenu::ContextMenuItem")
				{
					if (item.label == "Modules")
					{
						itemModule = item;
						break;
					}
				}
			}
			
			if (itemModule == null)
			{
				itemModule = modContextMenu.createContextMenuItemObject("Modules");
				
				data.content.push(itemModule);
			}
			
			if (itemModule.child == null)
			{
				itemModule.child = new Array();
			}
			
			itemModule.child = itemModule.child.concat(items);
		}
		
		private function statesCallback():void
		{
			loadUnloadUi();
		}
		
		private function loadUnloadUi():void
		{
			if (uiApi.getUi(UI_INSTANCE_NAME) == null)
			{
				uiApi.loadUi(UI_NAME, UI_INSTANCE_NAME);
			}
			else
			{
				uiApi.unloadUi(UI_INSTANCE_NAME);
			}
		}
		
		private function isLoadedUi():Boolean
		{
			return uiApi.getUi(UI_INSTANCE_NAME) != null;
		}
	}
}
