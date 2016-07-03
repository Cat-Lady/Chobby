function GetTabPanelHandler(holderName, buttonWindow, displayPanel, tabs, tabsVertical)
	
	local externalFunctions = {}
	
	local function getFont() 
		return {
			size = 16,
			outlineWidth = 6,
			outlineHeight = 6,
			outline = true,
			outlineColor = {0.54,0.72,1,0.3},
			autoOutlineColor = false,
			font = fontName
		}
	end
	
	-------------------------------------------------------------------
	-- Tabs
	-------------------------------------------------------------------
	local buttonsHolder = Control:New {
		x = 0,
		y = 0,
		right = 0,
		bottom = 0,
		name = holderName,
		parent = buttonWindow,
		padding = {0, 0, 0, 0},
		children = {}
	}
	
	local buttonSize = 100/#tabs
	
	local function ToggleShow(self, control)
		
		if displayPanel.visible then
			if displayPanel:GetChildByName(control.name) then
				displayPanel:ClearChildren()
				displayPanel:Hide()
				return
			end
		else
			displayPanel:Show()
		end
		displayPanel:ClearChildren()
		displayPanel:AddChild(control)
		
		self:SetCaption(Configuration:GetSelectedColor() .. self.oldCaption .. "\b")
		self.font = Chili.Font:New(getFont())
		self.backgroundColor = Configuration:GetButtonSelectedColor()
		self:Invalidate()
	end
	
	for i = 1, #tabs do
		local pos = buttonSize*(i-1) .. "%"
		
		local button = Button:New {
			x = (tabsVertical and 0) or pos,
			y = (tabsVertical and pos) or 0,
			width = (tabsVertical and "100%") or buttonSize .. "%",
			height = (tabsVertical and buttonSize .. "%") or "100%",
			caption = i18n(tabs[i].name),
			font = { size = 20},
			parent = buttonsHolder,
			OnClick = {function(self) ToggleShow(self, tabs[i].control) end},
		}
		
		button.oldFont = button.font
		button.oldCaption = button.caption
		button.oldBackgroundColor = button.backgroundColor
		
		tabs[i].button = button
		tabs[i].rank = i
		tabs[i].control.OnOrphan = {
			function(self)
				button:SetCaption(button.oldCaption)
				button.font = button.oldFont
				button.backgroundColor = button.oldBackgroundColor
				button:Invalidate()
			end
		}
	end
	
	local function UpdateButtonLayout(newTabsVertical)
		local buttonSize = 100/#tabs
		if newTabsVertical ~= nil then
			tabsVertical = newTabsVertical
		end
		for i = 1, #tabs do
			local pos = (i - 1)*buttonSize .. "%"
			tabs[i].button:SetPosRelative(
				(tabsVertical and 0) or pos,
				(tabsVertical and pos) or 0,
				(tabsVertical and "100%") or buttonSize .. "%",
				(tabsVertical and buttonSize .. "%") or "100%"
			)
		end
	end
	
	-------------------------------------------------------------------
	-- External Functions
	-------------------------------------------------------------------
	function externalFunctions.UpdateLayout(panelParent, newTabsVertical)
		displayPanel = panelParent
		UpdateButtonLayout(newTabsVertical)
	end
	
	function externalFunctions.Hide()
		if buttonsHolder.visible then
			buttonsHolder:Hide()
		end
	end
	
	function externalFunctions.Show()
		if not buttonsHolder.visible then
			buttonsHolder:Show()
		end
	end
	
	function externalFunctions.IsManagedControl(controlName)
		for i = 1, #tabs do
			if tabs[i].control and tabs[i].control.name == controlName then
				return true
			end
		end
		return false
	end
	
	function externalFunctions.RemoveTab(name)
		local index = 1
		local found = false
		while index <= #tabs do
			if found then
				tabs[index] = tabs[index + 1]
				index = index + 1
			elseif tabs[index].internalName == name then
				tabs[index].button:Dispose()
				found = true
			else
				index = index + 1
			end
		end
		if found then
			UpdateButtonLayout()
		end
	end
	
	function externalFunctions.AddTab(name, onClick, rank, control, selected, internalName)
		local newTab = {}
		local rank = rank or (#tabs + 1)
		
		newTab.name = name
		newTab.rank = rank
		newTab.internalName = internalName
		local button
		if control then
			button = Button:New {
				x = "0%",
				y = "0%",
				width = "100%",
				height = "100%",
				caption = name,
				font = {size = 20},
				parent = buttonsHolder,
				OnClick = {function(self) ToggleShow(self, control) end},
			}
		
			newTab.control = control
			
			button.oldFont = button.font
			button.oldCaption = button.caption
			button.oldBackgroundColor = button.backgroundColor
			
			if selected then
				ToggleShow(button, newTab.control)
			end
			
			control.OnOrphan = {
				function(self)
					button:SetCaption(button.oldCaption)
					button.font = button.oldFont
					button.backgroundColor = button.oldBackgroundColor
					button:Invalidate()
				end
			}
		
		else
			button = Button:New {
				x = "0%",
				y = "0%",
				width = "100%",
				height = "100%",
				caption = name,
				font = {size = 20},
				parent = buttonsHolder,
				OnClick = {onClick},
			}
		end

		newTab.button = button
		
		local index = #tabs + 1
		while index > 1 and rank < tabs[index - 1].rank do
			tabs[index] = tabs[index - 1]
			index = index - 1
		end
		tabs[index] = newTab
		
		UpdateButtonLayout()
	end
	
	return externalFunctions
end