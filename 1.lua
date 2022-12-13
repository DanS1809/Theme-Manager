local ui = gui.Window( "DanShi", "按键列表", 50, 100, 400, 400)
--按键
local keybinds = gui.Checkbox(ui, "keybinds", "开启按键查看", false);
--UI切换
local tab = gui.Tab(ui, "UI", "但是UI切换")
--汉化
local hanhua  = gui.Groupbox(ui, "翻译", 200, 279, 180, 100);
--文字列表
local SETTINGS_UPDATER_GBOX = gui.Groupbox(ui, "按键列表（绿）", 10, 40, 180, 30)
local SETTINGS_UPDATER_GBOX2 = gui.Groupbox(ui, "按键列表（红）", 10, 140, 180, 30)

--绿演功能按键列表
local SETTINGS_UPDATER_CURRENTVERSION = gui.Text( SETTINGS_UPDATER_GBOX, "m5(自动扳机)")
local SETTINGS_UPDATER_CURRENTVERSION = gui.Text( SETTINGS_UPDATER_GBOX, "m5(自动刀)")

--红演低头功能按键列表
local SETTINGS_UPDATER_CURRENTVERSION = gui.Text( SETTINGS_UPDATER_GBOX2, "P键切换低头参数")
local SETTINGS_UPDATER_CURRENTVERSION = gui.Text( SETTINGS_UPDATER_GBOX2, "m4(按住红演)")
local SETTINGS_UPDATER_CURRENTVERSION = gui.Text( SETTINGS_UPDATER_GBOX2, "m4按住(m5peek)")
local SETTINGS_UPDATER_CURRENTVERSION = gui.Text( SETTINGS_UPDATER_GBOX2, "F1(按一下低头)")
local SETTINGS_UPDATER_CURRENTVERSION = gui.Text( SETTINGS_UPDATER_GBOX2, "F1(按一下改变fov)")
local SETTINGS_UPDATER_CURRENTVERSION = gui.Text( SETTINGS_UPDATER_GBOX2, "大写键(伤害覆盖)")

--作者名片
local yueguanglua = gui.Text(ui, " 裁缝作者| 但是 | 2729")
yueguanglua:SetPosX(10)
yueguanglua:SetPosY(360)

--图标修改
awlogo = draw.CreateTexture(common.DecodePNG(http.Get("https://raw.githubusercontent.com/DanS1809/Theme-Manager/main/awlogo/aw%E5%9B%BE%E6%A0%87.png")))
gui.Reference("Menu"):SetIcon(awlogo, 1)

--awUI绑定
local AW_WINDOW = gui.Reference( "Menu" )

callbacks.Register( "Draw", function()
   
    ui:SetActive(AW_WINDOW:IsActive())
end)

local othergroupbox  = gui.Groupbox(ui, "UI预设1", 200, 40, 180, 50);
--local othergroupbox2  = gui.Groupbox(ui, "UI预设2", 500, 16, 287.5, 100);

-----------左边UI栏
gui.Button(othergroupbox, "但是的绿演主题", function()
    gui.SetValue("theme.footer.bg", 200, 40, 40, 255)
    gui.SetValue("theme.footer.bg", 119, 189, 210, 255)
    gui.SetValue("theme.footer.text", 255, 197, 255, 255)
    gui.SetValue("theme.header.bg", 114, 220, 255, 255)
    gui.SetValue("theme.header.line", 225, 255, 255, 255)
    gui.SetValue("theme.header.text", 255, 255, 255, 255)
    gui.SetValue("theme.nav.active", 255, 234, 255, 255)
    gui.SetValue("theme.nav.bg", 255, 235, 255, 255)
    gui.SetValue("theme.nav.shadow", 0, 135, 255, 127)
    gui.SetValue("theme.nav.text", 138, 225, 245, 255)
    gui.SetValue("theme.tablist.shadow", 0, 213, 255, 127)
    gui.SetValue("theme.tablist.tabactivebg", 0, 206, 254, 218)
    gui.SetValue("theme.tablist.tabdecorator", 255, 214, 255, 255)
    gui.SetValue("theme.tablist.text", 160, 255, 255, 255)
    gui.SetValue("theme.tablist.text2", 255, 215, 255, 255)
    gui.SetValue("theme.ui2.border", 127, 193, 222, 103)
    gui.SetValue("theme.ui2.lowpoly1", 162, 175, 178, 255)
    gui.SetValue("theme.ui2.lowpoly2", 255, 255, 255, 255)
end)

gui.Button(othergroupbox, "但是的摇头主题", function()
    gui.SetValue("theme.footer.bg", 35, 35, 35, 255)
    gui.SetValue("theme.footer.text", 255, 114, 0, 255)
    gui.SetValue("theme.header.bg", 35, 35, 35, 255)
    gui.SetValue("theme.header.line", 255, 114, 0, 255)
    gui.SetValue("theme.header.text", 255, 114, 0, 255)
    gui.SetValue("theme.nav.active", 255, 114, 0, 255)
    gui.SetValue("theme.nav.bg", 35, 35, 35, 255)
    gui.SetValue("theme.nav.shadow", 255, 114, 0, 255)
    gui.SetValue("theme.nav.text", 255, 114, 0, 255)
    gui.SetValue("theme.tablist.shadow", 255, 114, 0, 191)
    gui.SetValue("theme.tablist.tabactivebg", 32, 32, 32, 255)
    gui.SetValue("theme.tablist.tabdecorator", 255, 114, 0, 255)
    gui.SetValue("theme.tablist.text", 255, 114, 0, 255)
    gui.SetValue("theme.tablist.text2", 32, 32, 32, 255)
    gui.SetValue("theme.ui2.border", 255, 114, 0, 255)
    gui.SetValue("theme.ui2.lowpoly1", 35, 35, 35, 255)
    gui.SetValue("theme.ui2.lowpoly2", 255, 114, 0, 255)
end)

gui.Button(othergroupbox, "月光主题", function()
    gui.SetValue("theme.footer.bg", 0, 0, 0, 255)
	gui.SetValue("theme.header.bg", 0, 0, 0, 255)
	gui.SetValue("theme.nav.active", 0, 0, 0, 255)
	gui.SetValue("theme.nav.bg", 0, 0, 0, 255)
	gui.SetValue("theme.tablist.tabactivebg", 0, 0, 0, 255)
	gui.SetValue("theme.footer.text", 57, 108, 255, 255)
	gui.SetValue("theme.header.line", 57, 108, 255, 255)
	gui.SetValue("theme.header.text", 57, 108, 255, 255)
	gui.SetValue("theme.nav.shadow", 57, 108, 255, 255)
	gui.SetValue("theme.nav.text", 57, 108, 255, 255)
	gui.SetValue("theme.tablist.shadow", 57, 108, 255, 255)
	gui.SetValue("theme.tablist.tabdecorator", 57, 108, 255, 255)
	gui.SetValue("theme.tablist.text", 57, 108, 255, 255)
	gui.SetValue("theme.tablist.text2", 57, 108, 255, 255)
	gui.SetValue("theme.ui2.lowpoly1", 0, 6, 10, 255)
	gui.SetValue("theme.ui2.lowpoly2", 0, 32, 75, 255)
	gui.SetValue("theme.ui.border", 0, 0, 0, 255)
end)

gui.Button(othergroupbox, "AW默认主题", function()
    gui.SetValue("theme.footer.bg", 200, 40, 40, 255)
    gui.SetValue("theme.footer.text", 255, 255, 255, 255)
    gui.SetValue("theme.header.bg", 200, 40, 40, 255)
    gui.SetValue("theme.header.line", 220, 60, 40, 255)
    gui.SetValue("theme.header.text", 255, 255, 255, 255)
    gui.SetValue("theme.nav.active", 220, 60, 40, 255)
    gui.SetValue("theme.nav.bg", 170, 30, 30, 255)
    gui.SetValue("theme.nav.shadow", 0, 0, 0, 127)
    gui.SetValue("theme.nav.text", 255, 255, 255, 255)
    gui.SetValue("theme.tablist.shadow", 0, 0, 0, 127)
    gui.SetValue("theme.tablist.tabactivebg", 50, 50, 50, 255)
    gui.SetValue("theme.tablist.tabdecorator", 220, 40, 20, 255)
    gui.SetValue("theme.tablist.text", 255, 255, 255, 255)
    gui.SetValue("theme.tablist.text2", 252, 12, 6, 255)
    gui.SetValue("theme.ui2.border", 255, 255, 255, 50)
    gui.SetValue("theme.ui2.lowpoly1", 0, 0, 0, 224)
    gui.SetValue("theme.ui2.lowpoly2", 18, 18, 18, 255)
end)

----------右边UI栏

--gui.Button(othergroupbox2, "工业主题", function()
--end)



--render
rect = function( x, y, w, h, col )
    draw.Color( col[1], col[2], col[3], col[4] );
    draw.FilledRect(x, y, x + w, y + h)
end

gradient = function( x, y, w, h, col1, col2, is_vertical )
    rect( x, y, w, h, col1 );

    local r, g, b = col2[1], col2[2], col2[3];

    if is_vertical then
        for i = 1, h do
            local a = i / h * 255;
            rect( x, y + i, w, 1, { r, g, b, a } );
        end
    else
        for i = 1, w do
            local a = i / w * 255;
            rect( x + i, y, 1, h, { r, g, b, a } );
        end
    end
end

local handler_variables = 
{
    weapon_group =  {pistol = {2, 3, 4, 30, 32, 36, 61, 63}, 
                     sniper = {9}, 
                     scout = {40}, 
                     hpistol = {1, 64}, 
                     smg = {17, 19, 23, 24, 26, 33, 34}, 
                     rifle = {60, 7, 8, 10, 13, 16, 39}, 
                     shotgun = {25, 27, 29, 35}, 
                     asniper = {38, 11}, 
                     lmg = {28, 14},
                     zeus = {31}
                    }, 
    fps = 0,
    ping = 0,
    server_ip = 0,
    tickrate_updated = false,
    tickrate = client.GetConVar("sv_maxcmdrate"),
    server = "",
    user_name = cheat.GetUserName(),
    local_entity,
}

--script variable 
local color_r, color_g, color_b, color_a;
local mouseX, mouseY, x, y, dx, dy, w, h = 0, 0, 128, 290, 0, 0, 60, 60;
local shouldDrag = false;
local font = draw.CreateFont("Verdana", 12, 12);
local topbarSize = 23;
local imgRGBA, imgWidth, imgHeight = common.DecodePNG( svgData );
local texture = draw.CreateTexture( imgRGBA, imgWidth, imgHeight );

local function getWeaponGroup()
    if not handler_variables.local_entity or not not handler_variables.local_entity:IsAlive() then
        return "shared"
    end

    --get current weapon group
    local current_weapon_group = "shared"

    for group_name, group_weapons in pairs(weapon_group) do
        for weapon_id = 1, #group_weapons, 1 do

            local local_weapon_id = handler_variables.local_entity:GetWeaponID()

            if local_weapon_id == group_weapons[weapon_id] then
                current_weapon_group = group_name

                break
            end
        end
    end

    return current_weapon_group
end

local function getKeybinds()
    local keybinds_array = {};
    local i = 1;

    if  gui.GetValue("rbot.master") and getWeaponGroup() ~= "zeus" and 
        (gui.GetValue("rbot.accuracy.attack.shared.fire") == '"Shift Fire"' or  gui.GetValue("rbot.accuracy.attack." .. getWeaponGroup() .. ".fire") == "Shift Fire") then

        keybinds_array[i] = '   On shot AA';
        i = i + 1;
    end


	
        
    if gui.GetValue("rbot.master") and cheat.IsFakeDucking() then

        keybinds_array[i] = '   假蹲';
        i = i + 1;
    end
            
    if gui.GetValue("rbot.master") and gui.GetValue("rbot.accuracy.movement.slowkey") ~= 0 and input.IsButtonDown(gui.GetValue("rbot.accuracy.movement.slowkey")) then

        keybinds_array[i] = '   假走';
        i = i + 1;
    end

        
    if gui.GetValue("esp.master") and gui.GetValue("esp.world.thirdperson") then

        keybinds_array[i] = '   第三人称';
        i = i + 1;
    end
        
    if gui.GetValue("rbot.master") and getWeaponGroup() ~= "zeus" and 
        (gui.GetValue("rbot.accuracy.attack.shared.fire") == '"Defensive Warp Fire"' or  gui.GetValue("rbot.accuracy.attack." .. getWeaponGroup() .. ".fire") == '"Defensive Warp Fire"') then

        keybinds_array[i] = '   DT';
        i = i + 1;
    end
        

    return keybinds_array;
end

local function drawKeybinds(keybinds_array)
    local temp = false;

    for index in pairs(keybinds_array) do

        draw.SetFont(font);
        draw.Color(160, 255, 255, 255);
        draw.Text(x + 13, (y + topbarSize + 5) + (index * 15), keybinds_array[index])
        draw.Text(x + 89, (y + topbarSize + 5) + (index * 15), " [ 启動 ] ")

        draw.SetFont(font);
        draw.Color(0, 0, 0, 0);
        draw.Text(x + 88, (y + topbarSize + 4) + (index * 15), " [ 启動 ] " )
        draw.Text(x + 12, (y + topbarSize + 4) + (index * 15), keybinds_array[index])
    end
end

local function drawRectFill(r, g, b, a, x, y, w, h, texture)
    if (texture ~= nil) then
        draw.SetTexture(texture);
    else
        draw.SetTexture(texture);
    end
    draw.Color(r, g, b, a);
    draw.FilledRect(x, y, x + w, y + h);
end

local function dragFeature()
    if input.IsButtonDown(1) then
        mouseX, mouseY = input.GetMousePos();

        if shouldDrag then
            x = mouseX - dx;
            y = mouseY - dy;
        end

        if mouseX >= x and mouseX <= x + w and mouseY >= y and mouseY <= y + h then
            shouldDrag = true;
            dx = mouseX - x;
            dy = mouseY - y;
        end
    else
        shouldDrag = false;
    end
end

local function drawOutline(r, g, b, a, x, y, w, h, howMany)
    for i = 1, howMany do
        draw.Color(r, g, b, a);
        draw.OutlinedRect(x - i, y - i, x + w + i, y + h + i);
    end
end

local function drawWindow(keybinds_array)
    local h2 = 5 + (#keybinds_array * 15);
    local h = 5 + (#keybinds_array * 15);
   
    drawRectFill(color_r, color_g, color_b, color_a, x + 21, y + 21, 121, 10); 
    drawRectFill(color_r, color_g, color_b, color_a, x + 21, y + 20, 121, 10);
    drawRectFill(0, 0, 0, 150, x + 7, y + 22, 121, 17);

    draw.Color(160, 255, 255, 255);
    draw.SetFont(font);
    local keytext = " 𝓴𝓮𝔂𝓫𝓲𝓷𝓭𝓼 ";
    local tW, _ = draw.GetTextSize(keytext);
   
    draw.Text(x + 24, y + 26, keytext)

    draw.Color(114, 220, 255, 255);
    draw.SetFont(font);
   
    draw.Text(x + 24, y + 26, keytext)
   
    draw.Color(255, 255, 255);
    draw.SetTexture( texture );
end

--汉化切换
local ui  = gui.Checkbox(hanhua, "hanhua", "翻译切换", false);
load(http.Get(hanhua, ""))()


callbacks.Register("Draw", function()

    if keybinds:GetValue() and #getKeybinds() > 0 then
        draw.SetTexture( texture );

        drawWindow(getKeybinds());

        drawKeybinds(getKeybinds());
        dragFeature();
    end

end)
