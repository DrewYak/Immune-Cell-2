-- display groups
local back_group = display.newGroup()
local main_group = display.newGroup()
local ui_group = display.newGroup()


-- background
local background = display.newImageRect(back_group, "background.png", 1280, 720)
background.x = display.contentCenterX
background.y = display.contentCenterY


-- virus sheet
local frames = {}
local frame_width = 256
local frame_height = 256
for i = 1, 7 do
	for j = 1, 6 do
		frame_info = {
			x = 0 + frame_width * (i - 1),
			y = 0 + frame_height * (j - 1),
			width = frame_width,
			height = frame_height
		}
		table.insert(frames, frame_info)
	end
end

local sheet_info = {frames = frames}

local virus_sheet = graphics.newImageSheet("viruses.png", sheet_info)
