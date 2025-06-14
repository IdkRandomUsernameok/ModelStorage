--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 149 | Scripts: 25 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.Overwrite
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["DisplayOrder"] = 9999;
G2L["1"]["Name"] = [[Overwrite]];
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.Overwrite.Main
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["ZIndex"] = 2;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 570, 0, 300);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2"]["Name"] = [[Main]];
G2L["2"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Main.TopBar
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3"]["Size"] = UDim2.new(0, 567, 0, 26);
G2L["3"]["Position"] = UDim2.new(0.501, 0, 0.09, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3"]["Name"] = [[TopBar]];
G2L["3"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Main.TopBar.Close
G2L["4"] = Instance.new("TextButton", G2L["3"]);
G2L["4"]["TextSize"] = 35;
G2L["4"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["ZIndex"] = 6;
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["4"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4"]["Text"] = [[X]];
G2L["4"]["Name"] = [[Close]];
G2L["4"]["Position"] = UDim2.new(1.02, 0, -0.841, 0);


-- StarterGui.Overwrite.Main.TopBar.Close.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);
G2L["5"]["CornerRadius"] = UDim.new(0, 25);


-- StarterGui.Overwrite.Main.TopBar.Close.Border
G2L["6"] = Instance.new("TextLabel", G2L["4"]);
G2L["6"]["ZIndex"] = 5;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 30;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6"]["Text"] = [[]];
G2L["6"]["Name"] = [[Border]];
G2L["6"]["Position"] = UDim2.new(0, -2, 0, 1);


-- StarterGui.Overwrite.Main.TopBar.Close.Border.UIStroke
G2L["7"] = Instance.new("UIStroke", G2L["6"]);
G2L["7"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["7"]["Thickness"] = 7;
G2L["7"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Overwrite.Main.TopBar.Close.Border.UIStroke.UIGradient
G2L["8"] = Instance.new("UIGradient", G2L["7"]);
G2L["8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Main.TopBar.Close.Border.UICorner
G2L["9"] = Instance.new("UICorner", G2L["6"]);
G2L["9"]["CornerRadius"] = UDim.new(0, 25);


-- StarterGui.Overwrite.Main.TopBar.Close.DarkBorder
G2L["a"] = Instance.new("TextLabel", G2L["4"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 30;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["a"]["Text"] = [[]];
G2L["a"]["Name"] = [[DarkBorder]];
G2L["a"]["Position"] = UDim2.new(0, 1, 0, 4);


-- StarterGui.Overwrite.Main.TopBar.Close.DarkBorder.DarkBorder
G2L["b"] = Instance.new("UIStroke", G2L["a"]);
G2L["b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["b"]["Name"] = [[DarkBorder]];
G2L["b"]["Thickness"] = 7;
G2L["b"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Overwrite.Main.TopBar.Close.DarkBorder.DarkBorder.UIGradient
G2L["c"] = Instance.new("UIGradient", G2L["b"]);
G2L["c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(95, 19, 150)),ColorSequenceKeypoint.new(0.499, Color3.fromRGB(102, 20, 159)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(100, 20, 161))};


-- StarterGui.Overwrite.Main.TopBar.Close.DarkBorder.DarkBorder.GradientRotation
G2L["d"] = Instance.new("LocalScript", G2L["b"]);
G2L["d"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Main.TopBar.Close.DarkBorder.UICorner
G2L["e"] = Instance.new("UICorner", G2L["a"]);
G2L["e"]["CornerRadius"] = UDim.new(0, 25);


-- StarterGui.Overwrite.Main.TopBar.Close.BG
G2L["f"] = Instance.new("TextLabel", G2L["4"]);
G2L["f"]["ZIndex"] = 5;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextSize"] = 30;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["f"]["Text"] = [[]];
G2L["f"]["Name"] = [[BG]];
G2L["f"]["Position"] = UDim2.new(0, -2, 0, 1);


-- StarterGui.Overwrite.Main.TopBar.Close.BG.UICorner
G2L["10"] = Instance.new("UICorner", G2L["f"]);
G2L["10"]["CornerRadius"] = UDim.new(0, 25);


-- StarterGui.Overwrite.Main.TopBar.PageButtons
G2L["11"] = Instance.new("Frame", G2L["3"]);
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["Size"] = UDim2.new(0, 545, 0, 26);
G2L["11"]["Position"] = UDim2.new(0.02325, 0, 0, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["11"]["Name"] = [[PageButtons]];
G2L["11"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Main.TopBar.PageButtons.Page1
G2L["12"] = Instance.new("TextButton", G2L["11"]);
G2L["12"]["TextWrapped"] = true;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextSize"] = 19;
G2L["12"]["AutoButtonColor"] = false;
G2L["12"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12"]["ZIndex"] = 2;
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["12"]["Size"] = UDim2.new(0, 120, 0, 27);
G2L["12"]["LayoutOrder"] = 1;
G2L["12"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["12"]["Text"] = [[Overwrite]];
G2L["12"]["Name"] = [[Page1]];
G2L["12"]["Position"] = UDim2.new(0, 75, 0, 12);


-- StarterGui.Overwrite.Main.TopBar.PageButtons.Page1.UIStroke
G2L["13"] = Instance.new("UIStroke", G2L["12"]);
G2L["13"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["13"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["13"]["Thickness"] = 5;
G2L["13"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Overwrite.Main.TopBar.PageButtons.Page1.UIStroke.UIGradient
G2L["14"] = Instance.new("UIGradient", G2L["13"]);
G2L["14"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Main.TopBar.PageButtons.Page1.UIStroke.GradientRotation
G2L["15"] = Instance.new("LocalScript", G2L["13"]);
G2L["15"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Main.TopBar.PageButtons.UIListLayout
G2L["16"] = Instance.new("UIListLayout", G2L["11"]);
G2L["16"]["Padding"] = UDim.new(0, 20);
G2L["16"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["16"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Overwrite.Main.Glow
G2L["17"] = Instance.new("ImageLabel", G2L["2"]);
G2L["17"]["ZIndex"] = 3;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["ImageTransparency"] = 0.65;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["17"]["ImageColor3"] = Color3.fromRGB(155, 29, 244);
G2L["17"]["Image"] = [[rbxassetid://7172065526]];
G2L["17"]["Size"] = UDim2.new(0, 749, 0, 403);
G2L["17"]["Visible"] = false;
G2L["17"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Name"] = [[Glow]];
G2L["17"]["Position"] = UDim2.new(-0.17446, 0, -0.19795, 0);


-- StarterGui.Overwrite.Main.Borders
G2L["18"] = Instance.new("Frame", G2L["2"]);
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["18"]["Name"] = [[Borders]];


-- StarterGui.Overwrite.Main.Borders.DarkBorder
G2L["19"] = Instance.new("Frame", G2L["18"]);
G2L["19"]["ZIndex"] = -1;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["19"]["Position"] = UDim2.new(0, 4, 0, 5);
G2L["19"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["19"]["Name"] = [[DarkBorder]];


-- StarterGui.Overwrite.Main.Borders.DarkBorder.UIStroke
G2L["1a"] = Instance.new("UIStroke", G2L["19"]);
G2L["1a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["1a"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["1a"]["Thickness"] = 8;
G2L["1a"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Overwrite.Main.Borders.DarkBorder.UIStroke.UIGradient
G2L["1b"] = Instance.new("UIGradient", G2L["1a"]);
G2L["1b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(95, 19, 150)),ColorSequenceKeypoint.new(0.499, Color3.fromRGB(102, 20, 159)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(100, 20, 161))};


-- StarterGui.Overwrite.Main.Borders.DarkBorder.UIStroke.GradientRotation
G2L["1c"] = Instance.new("LocalScript", G2L["1a"]);
G2L["1c"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Main.MainBorder
G2L["1d"] = Instance.new("UIStroke", G2L["2"]);
G2L["1d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["1d"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["1d"]["Name"] = [[MainBorder]];
G2L["1d"]["Thickness"] = 8;
G2L["1d"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Overwrite.Main.MainBorder.UIGradient
G2L["1e"] = Instance.new("UIGradient", G2L["1d"]);
G2L["1e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Main.MainBorder.GradientRotation
G2L["1f"] = Instance.new("LocalScript", G2L["1d"]);
G2L["1f"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Main.PageHandler
G2L["20"] = Instance.new("LocalScript", G2L["2"]);
G2L["20"]["Name"] = [[PageHandler]];


-- StarterGui.Overwrite.Main.Pages
G2L["21"] = Instance.new("Frame", G2L["2"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["21"]["Name"] = [[Pages]];
G2L["21"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Main.Pages.Page1
G2L["22"] = Instance.new("Frame", G2L["21"]);
G2L["22"]["Visible"] = false;
G2L["22"]["ZIndex"] = 2;
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["22"]["Size"] = UDim2.new(0.95, 0, 0.02, 221);
G2L["22"]["Position"] = UDim2.new(0.50175, 0, 0.57, 0);
G2L["22"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["22"]["Name"] = [[Page1]];


-- StarterGui.Overwrite.Main.Pages.Page1.Target
G2L["23"] = Instance.new("Frame", G2L["22"]);
G2L["23"]["ZIndex"] = 4;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["Size"] = UDim2.new(0, 381, 0, 35);
G2L["23"]["Position"] = UDim2.new(0.05, 0, -0.02262, 5);
G2L["23"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["23"]["Name"] = [[Target]];
G2L["23"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Main.Pages.Page1.Target.TargetTextBox
G2L["24"] = Instance.new("TextBox", G2L["23"]);
G2L["24"]["Name"] = [[TargetTextBox]];
G2L["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["24"]["PlaceholderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["24"]["ZIndex"] = 6;
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 20;
G2L["24"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["24"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["24"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["24"]["Position"] = UDim2.new(0.32737, 0, 0, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["24"]["Text"] = [[]];
G2L["24"]["LayoutOrder"] = 2;
G2L["24"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Main.Pages.Page1.Target.TargetTextBox.AutofillUsername
G2L["25"] = Instance.new("TextLabel", G2L["24"]);
G2L["25"]["TextStrokeTransparency"] = 0;
G2L["25"]["ZIndex"] = 5;
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["TextSize"] = 20;
G2L["25"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["25"]["TextTransparency"] = 0.5;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["25"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["25"]["Text"] = [[]];
G2L["25"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["25"]["Name"] = [[AutofillUsername]];


-- StarterGui.Overwrite.Main.Pages.Page1.Target.TargetLabel
G2L["26"] = Instance.new("TextLabel", G2L["23"]);
G2L["26"]["ZIndex"] = 4;
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["TextSize"] = 20;
G2L["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["26"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["26"]["BackgroundTransparency"] = 1;
G2L["26"]["Size"] = UDim2.new(-0.1319, 145, 1, 0);
G2L["26"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["26"]["Text"] = [[[TARGET] = []];
G2L["26"]["LayoutOrder"] = 1;
G2L["26"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["26"]["Name"] = [[TargetLabel]];


-- StarterGui.Overwrite.Main.Pages.Page1.Target.EqualLabel
G2L["27"] = Instance.new("TextLabel", G2L["23"]);
G2L["27"]["ZIndex"] = 4;
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextSize"] = 20;
G2L["27"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Size"] = UDim2.new(-0.23622, 107, 1, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["27"]["Text"] = '[]]';
G2L["27"]["LayoutOrder"] = 3;
G2L["27"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["27"]["Name"] = [[EqualLabel]];
G2L["27"]["Position"] = UDim2.new(0.37795, 0, 0, 0);


-- StarterGui.Overwrite.Main.Pages.Page1.Target.UIListLayout
G2L["28"] = Instance.new("UIListLayout", G2L["23"]);
G2L["28"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["28"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite
G2L["29"] = Instance.new("TextButton", G2L["22"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextSize"] = 20;
G2L["29"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["ZIndex"] = 4;
G2L["29"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Size"] = UDim2.new(0, 140, 0, 30);
G2L["29"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["29"]["Text"] = [[]];
G2L["29"]["Name"] = [[Overwrite]];
G2L["29"]["Position"] = UDim2.new(0.85089, 0, 0.87783, 0);


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Title
G2L["2a"] = Instance.new("TextLabel", G2L["29"]);
G2L["2a"]["TextWrapped"] = true;
G2L["2a"]["ZIndex"] = 4;
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["TextSize"] = 20;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2a"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["2a"]["BackgroundTransparency"] = 1;
G2L["2a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2a"]["Text"] = [[OVERWRITE]];
G2L["2a"]["Name"] = [[Title]];
G2L["2a"]["Position"] = UDim2.new(0.01429, 0, 0, 0);


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border
G2L["2b"] = Instance.new("Frame", G2L["29"]);
G2L["2b"]["ZIndex"] = 4;
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["Size"] = UDim2.new(0.02857, 0, 1.25806, 0);
G2L["2b"]["Position"] = UDim2.new(-0.02857, 0, -0.12903, 0);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2b"]["Name"] = [[Border]];


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.GradientRotation
G2L["2c"] = Instance.new("LocalScript", G2L["2b"]);
G2L["2c"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.UIGradient
G2L["2d"] = Instance.new("UIGradient", G2L["2b"]);
G2L["2d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border
G2L["2e"] = Instance.new("Frame", G2L["29"]);
G2L["2e"]["ZIndex"] = 4;
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["Size"] = UDim2.new(0.02857, 0, 1.25806, 0);
G2L["2e"]["Position"] = UDim2.new(1, 0, -0.12903, 0);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2e"]["Name"] = [[Border]];


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.GradientRotation
G2L["2f"] = Instance.new("LocalScript", G2L["2e"]);
G2L["2f"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.UIGradient
G2L["30"] = Instance.new("UIGradient", G2L["2e"]);
G2L["30"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border
G2L["31"] = Instance.new("Frame", G2L["29"]);
G2L["31"]["ZIndex"] = 4;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["Size"] = UDim2.new(1, 0, 0.12903, 0);
G2L["31"]["Position"] = UDim2.new(0, 0, -0.12903, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["31"]["Name"] = [[Border]];


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.GradientRotation
G2L["32"] = Instance.new("LocalScript", G2L["31"]);
G2L["32"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.UIGradient
G2L["33"] = Instance.new("UIGradient", G2L["31"]);
G2L["33"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(147, 24, 241)),ColorSequenceKeypoint.new(0.504, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(193, 46, 255))};


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border
G2L["34"] = Instance.new("Frame", G2L["29"]);
G2L["34"]["ZIndex"] = 4;
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["Size"] = UDim2.new(1, 0, 0.12903, 0);
G2L["34"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["34"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["34"]["Name"] = [[Border]];


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.UIGradient
G2L["35"] = Instance.new("UIGradient", G2L["34"]);
G2L["35"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.GradientRotation
G2L["36"] = Instance.new("LocalScript", G2L["34"]);
G2L["36"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.DarkBorder
G2L["37"] = Instance.new("Frame", G2L["29"]);
G2L["37"]["ZIndex"] = 2;
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["37"]["Position"] = UDim2.new(0.01429, 0, 0.09677, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["37"]["Name"] = [[DarkBorder]];


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.DarkBorder.UIStroke
G2L["38"] = Instance.new("UIStroke", G2L["37"]);
G2L["38"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["38"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["38"]["Thickness"] = 3;
G2L["38"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.DarkBorder.UIStroke.UIGradient
G2L["39"] = Instance.new("UIGradient", G2L["38"]);
G2L["39"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(95, 19, 150)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(102, 20, 159)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(100, 20, 161))};


-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.DarkBorder.UIStroke.GradientRotation
G2L["3a"] = Instance.new("LocalScript", G2L["38"]);
G2L["3a"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Main.Pages.Page1.PageBorder
G2L["3b"] = Instance.new("UIStroke", G2L["22"]);
G2L["3b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["3b"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["3b"]["Name"] = [[PageBorder]];
G2L["3b"]["Thickness"] = 5;
G2L["3b"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Overwrite.Main.Pages.Page1.PageBorder.UIGradient
G2L["3c"] = Instance.new("UIGradient", G2L["3b"]);
G2L["3c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Main.Pages.Page1.PageBorder.GradientRotation
G2L["3d"] = Instance.new("LocalScript", G2L["3b"]);
G2L["3d"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Main.Pages.Page1.Bar
G2L["3e"] = Instance.new("Frame", G2L["22"]);
G2L["3e"]["ZIndex"] = 4;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(159, 28, 244);
G2L["3e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3e"]["Size"] = UDim2.new(0, 514, 0, 4);
G2L["3e"]["Position"] = UDim2.new(0, 270, 0, 30);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3e"]["Name"] = [[Bar]];


-- StarterGui.Overwrite.Main.Pages.Page1.SelectionFrame
G2L["3f"] = Instance.new("Frame", G2L["22"]);
G2L["3f"]["ZIndex"] = 4;
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Size"] = UDim2.new(0, 20, 0, 172);
G2L["3f"]["Position"] = UDim2.new(0, 20, 0, 49);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["3f"]["Name"] = [[SelectionFrame]];


-- StarterGui.Overwrite.Main.Pages.Page1.SelectionFrame.Stat
G2L["40"] = Instance.new("TextButton", G2L["3f"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["TextTransparency"] = 0.5;
G2L["40"]["TextSize"] = 30;
G2L["40"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["40"]["ZIndex"] = 4;
G2L["40"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["40"]["BackgroundTransparency"] = 1;
G2L["40"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["40"]["LayoutOrder"] = 1;
G2L["40"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["40"]["Text"] = [[*]];
G2L["40"]["Name"] = [[Stat]];
G2L["40"]["Position"] = UDim2.new(0.5, 0, 0, 14);


-- StarterGui.Overwrite.Main.Pages.Page1.SelectionFrame.Stat.Toggled
G2L["41"] = Instance.new("BoolValue", G2L["40"]);
G2L["41"]["Name"] = [[Toggled]];


-- StarterGui.Overwrite.Main.Pages.Page1.SelectionFrame.Act
G2L["42"] = Instance.new("TextButton", G2L["3f"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["TextTransparency"] = 0.5;
G2L["42"]["TextSize"] = 30;
G2L["42"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["42"]["ZIndex"] = 4;
G2L["42"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["42"]["BackgroundTransparency"] = 1;
G2L["42"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["42"]["LayoutOrder"] = 3;
G2L["42"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["42"]["Text"] = [[*]];
G2L["42"]["Name"] = [[Act]];
G2L["42"]["Position"] = UDim2.new(0.5, 0, 0, 52);


-- StarterGui.Overwrite.Main.Pages.Page1.SelectionFrame.Act.Toggled
G2L["43"] = Instance.new("BoolValue", G2L["42"]);
G2L["43"]["Name"] = [[Toggled]];


-- StarterGui.Overwrite.Main.Pages.Page1.SelectionFrame.UIListLayout
G2L["44"] = Instance.new("UIListLayout", G2L["3f"]);
G2L["44"]["Padding"] = UDim.new(0, 12);
G2L["44"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Overwrite.Main.Pages.Page1.ActList
G2L["45"] = Instance.new("Frame", G2L["22"]);
G2L["45"]["ZIndex"] = 4;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["Size"] = UDim2.new(0, 486, 0, 169);
G2L["45"]["Position"] = UDim2.new(0, 54, 0, 50);
G2L["45"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["45"]["Name"] = [[ActList]];
G2L["45"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Stat
G2L["46"] = Instance.new("Frame", G2L["45"]);
G2L["46"]["ZIndex"] = 2;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["Size"] = UDim2.new(0, 391, 0, 20);
G2L["46"]["Position"] = UDim2.new(0.1, 0, 0.2, 0);
G2L["46"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["46"]["Name"] = [[Stat]];
G2L["46"]["LayoutOrder"] = 1;
G2L["46"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Stat.StatTargetTextBox
G2L["47"] = Instance.new("TextBox", G2L["46"]);
G2L["47"]["CursorPosition"] = -1;
G2L["47"]["Name"] = [[StatTargetTextBox]];
G2L["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["47"]["PlaceholderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["47"]["ZIndex"] = 5;
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["TextSize"] = 20;
G2L["47"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["47"]["PlaceholderText"] = [[???]];
G2L["47"]["Size"] = UDim2.new(0, 13, 1, 0);
G2L["47"]["Position"] = UDim2.new(0.30946, 0, 0, 0);
G2L["47"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["47"]["Text"] = [[]];
G2L["47"]["LayoutOrder"] = 2;
G2L["47"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Stat.StatTargetTextBox.AutofillStat
G2L["48"] = Instance.new("TextLabel", G2L["47"]);
G2L["48"]["ZIndex"] = 4;
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["TextSize"] = 20;
G2L["48"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["48"]["TextTransparency"] = 0.5;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["48"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["48"]["BackgroundTransparency"] = 1;
G2L["48"]["Size"] = UDim2.new(0, 14, 1, 0);
G2L["48"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["48"]["Text"] = [[]];
G2L["48"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["48"]["Name"] = [[AutofillStat]];


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Stat.StatLabel
G2L["49"] = Instance.new("TextLabel", G2L["46"]);
G2L["49"]["ZIndex"] = 4;
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["TextSize"] = 20;
G2L["49"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["49"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["49"]["BackgroundTransparency"] = 1;
G2L["49"]["Size"] = UDim2.new(-0.00512, 121, 1, 0);
G2L["49"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["49"]["Text"] = [[[STAT] = []];
G2L["49"]["LayoutOrder"] = 1;
G2L["49"]["Name"] = [[StatLabel]];


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Stat.UIListLayout
G2L["4a"] = Instance.new("UIListLayout", G2L["46"]);
G2L["4a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["4a"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Stat.EqualLabel
G2L["4b"] = Instance.new("TextLabel", G2L["46"]);
G2L["4b"]["ZIndex"] = 4;
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["TextSize"] = 20;
G2L["4b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4b"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["4b"]["BackgroundTransparency"] = 1;
G2L["4b"]["Size"] = UDim2.new(0, 48, 1, 0);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4b"]["Text"] = [[] = ]];
G2L["4b"]["LayoutOrder"] = 3;
G2L["4b"]["Name"] = [[EqualLabel]];
G2L["4b"]["Position"] = UDim2.new(0.49361, 0, 0, 0);


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Stat.NewValueTextBox
G2L["4c"] = Instance.new("TextBox", G2L["46"]);
G2L["4c"]["CursorPosition"] = -1;
G2L["4c"]["Name"] = [[NewValueTextBox]];
G2L["4c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4c"]["PlaceholderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["4c"]["ZIndex"] = 5;
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["TextSize"] = 20;
G2L["4c"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4c"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["4c"]["PlaceholderText"] = [[???]];
G2L["4c"]["Size"] = UDim2.new(0, 10, 1, 0);
G2L["4c"]["Position"] = UDim2.new(0.5243, 0, 0, 0);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["4c"]["Text"] = [[]];
G2L["4c"]["LayoutOrder"] = 4;
G2L["4c"]["BackgroundTransparency"] = 1;
-- Attributes
G2L["4c"]:SetAttribute([[TrueValue]], [[]]);


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Stat.NewValueTextBox.AutofillValue
G2L["4d"] = Instance.new("TextLabel", G2L["4c"]);
G2L["4d"]["ZIndex"] = 4;
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["TextSize"] = 20;
G2L["4d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4d"]["TextTransparency"] = 0.5;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4d"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["4d"]["BackgroundTransparency"] = 1;
G2L["4d"]["Size"] = UDim2.new(0, 14, 1, 0);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4d"]["Text"] = [[]];
G2L["4d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["4d"]["Name"] = [[AutofillValue]];


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Act
G2L["4e"] = Instance.new("Frame", G2L["45"]);
G2L["4e"]["ZIndex"] = 2;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["Size"] = UDim2.new(0, 391, 0, 20);
G2L["4e"]["Position"] = UDim2.new(0.1, 0, 0, 83);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4e"]["Name"] = [[Act]];
G2L["4e"]["LayoutOrder"] = 3;
G2L["4e"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Act.ActLabel
G2L["4f"] = Instance.new("TextLabel", G2L["4e"]);
G2L["4f"]["ZIndex"] = 4;
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["TextSize"] = 20;
G2L["4f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4f"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["4f"]["BackgroundTransparency"] = 1;
G2L["4f"]["Size"] = UDim2.new(0, 108, 0, 19);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4f"]["Text"] = [[[ACT] = []];
G2L["4f"]["LayoutOrder"] = 1;
G2L["4f"]["Name"] = [[ActLabel]];


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Act.UIListLayout
G2L["50"] = Instance.new("UIListLayout", G2L["4e"]);
G2L["50"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["50"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Act.ActTypeText
G2L["51"] = Instance.new("TextBox", G2L["4e"]);
G2L["51"]["CursorPosition"] = -1;
G2L["51"]["Name"] = [[ActTypeText]];
G2L["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["51"]["PlaceholderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["51"]["ZIndex"] = 4;
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["TextSize"] = 20;
G2L["51"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["51"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["51"]["PlaceholderText"] = [[???]];
G2L["51"]["Size"] = UDim2.new(0, 0, 0, 19);
G2L["51"]["Position"] = UDim2.new(0.2711, 0, 0, 0);
G2L["51"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["51"]["Text"] = [[]];
G2L["51"]["LayoutOrder"] = 2;
G2L["51"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Act.ActTypeText.AutofillActType
G2L["52"] = Instance.new("TextLabel", G2L["51"]);
G2L["52"]["ZIndex"] = 3;
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["TextSize"] = 20;
G2L["52"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["52"]["TextTransparency"] = 0.5;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["52"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["Size"] = UDim2.new(0, 0, 0, 19);
G2L["52"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["52"]["Text"] = [[]];
G2L["52"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["52"]["Name"] = [[AutofillActType]];


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.Act.Label
G2L["53"] = Instance.new("TextLabel", G2L["4e"]);
G2L["53"]["ZIndex"] = 4;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["TextSize"] = 20;
G2L["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["53"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["53"]["BackgroundTransparency"] = 1;
G2L["53"]["Size"] = UDim2.new(0, 48, 0, 19);
G2L["53"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["53"]["Text"] = ']';
G2L["53"]["LayoutOrder"] = 3;
G2L["53"]["Name"] = [[Label]];
G2L["53"]["Position"] = UDim2.new(0.49361, 0, 0, 0);


-- StarterGui.Overwrite.Main.Pages.Page1.ActList.UIListLayout
G2L["54"] = Instance.new("UIListLayout", G2L["45"]);
G2L["54"]["Padding"] = UDim.new(0, 12);
G2L["54"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Overwrite.Main.Pages.Page1.ChatMessageToggle
G2L["55"] = Instance.new("TextButton", G2L["22"]);
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["TextTransparency"] = 0.5;
G2L["55"]["TextSize"] = 30;
G2L["55"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["55"]["ZIndex"] = 4;
G2L["55"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["55"]["BackgroundTransparency"] = 1;
G2L["55"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["55"]["LayoutOrder"] = 3;
G2L["55"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["55"]["Text"] = [[*]];
G2L["55"]["Name"] = [[ChatMessageToggle]];
G2L["55"]["Position"] = UDim2.new(0.78809, 0, -0.1674, 52);


-- StarterGui.Overwrite.Main.Pages.Page1.ChatMessageToggle.Toggled
G2L["56"] = Instance.new("BoolValue", G2L["55"]);
G2L["56"]["Name"] = [[Toggled]];


-- StarterGui.Overwrite.Main.Pages.Page1.ChatMessageLable
G2L["57"] = Instance.new("TextLabel", G2L["22"]);
G2L["57"]["ZIndex"] = 4;
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["TextSize"] = 14;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["57"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["57"]["BackgroundTransparency"] = 1;
G2L["57"]["Size"] = UDim2.new(0, 105, 0, 24);
G2L["57"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["57"]["Text"] = [[Chat message]];
G2L["57"]["Name"] = [[ChatMessageLable]];
G2L["57"]["Position"] = UDim2.new(0.80517, 0, 0.01762, 0);


-- StarterGui.Overwrite.Main.Pages.Page1.Page1Main
G2L["58"] = Instance.new("LocalScript", G2L["22"]);
G2L["58"]["Name"] = [[Page1Main]];


-- StarterGui.Overwrite.Main.Pages.Page1.StatValueType
G2L["59"] = Instance.new("TextLabel", G2L["22"]);
G2L["59"]["ZIndex"] = 4;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["TextSize"] = 14;
G2L["59"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["59"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["Size"] = UDim2.new(0, 248, 0, 17);
G2L["59"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["59"]["Text"] = [[[STAT_VALUE_TYPE] = ???]];
G2L["59"]["LayoutOrder"] = 5;
G2L["59"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["59"]["Name"] = [[StatValueType]];
G2L["59"]["Position"] = UDim2.new(0, 56, 0, 35);


-- StarterGui.Overwrite.Main.Pages.Welcome
G2L["5a"] = Instance.new("Frame", G2L["21"]);
G2L["5a"]["ZIndex"] = 2;
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5a"]["Size"] = UDim2.new(0.95, 0, 0.02, 221);
G2L["5a"]["Position"] = UDim2.new(0.50175, 0, 0.57, 0);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5a"]["Name"] = [[Welcome]];


-- StarterGui.Overwrite.Main.Pages.Welcome.PageBorder
G2L["5b"] = Instance.new("UIStroke", G2L["5a"]);
G2L["5b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["5b"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["5b"]["Name"] = [[PageBorder]];
G2L["5b"]["Thickness"] = 5;
G2L["5b"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Overwrite.Main.Pages.Welcome.PageBorder.UIGradient
G2L["5c"] = Instance.new("UIGradient", G2L["5b"]);
G2L["5c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Main.Pages.Welcome.PageBorder.GradientRotation
G2L["5d"] = Instance.new("LocalScript", G2L["5b"]);
G2L["5d"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Main.Pages.Welcome.WelcomeMessage
G2L["5e"] = Instance.new("TextLabel", G2L["5a"]);
G2L["5e"]["TextWrapped"] = true;
G2L["5e"]["ZIndex"] = 5;
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["TextSize"] = 20;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5e"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["5e"]["BackgroundTransparency"] = 1;
G2L["5e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5e"]["Size"] = UDim2.new(0.95, 0, 0, 26);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5e"]["Text"] = [[WELCOME TO OVERWRITE, USERNAME.]];
G2L["5e"]["Name"] = [[WelcomeMessage]];
G2L["5e"]["Position"] = UDim2.new(0.5, 0, 0.02643, 13);


-- StarterGui.Overwrite.Main.Pages.Welcome.LocalScript
G2L["5f"] = Instance.new("LocalScript", G2L["5a"]);



-- StarterGui.Overwrite.Main.Pages.Welcome.Bar
G2L["60"] = Instance.new("Frame", G2L["5a"]);
G2L["60"]["ZIndex"] = 5;
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(159, 28, 244);
G2L["60"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["60"]["Size"] = UDim2.new(0, 514, 0, 4);
G2L["60"]["Position"] = UDim2.new(0, 270, 0, 30);
G2L["60"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["60"]["Name"] = [[Bar]];


-- StarterGui.Overwrite.Main.Pages.Welcome.Info
G2L["61"] = Instance.new("TextLabel", G2L["5a"]);
G2L["61"]["TextWrapped"] = true;
G2L["61"]["ZIndex"] = 5;
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["TextSize"] = 20;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["61"]["Size"] = UDim2.new(0.95, 0, 0.0793, 26);
G2L["61"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["61"]["Text"] = [[SOULSHATTERS BYFRON BYPASS 2025 FE REAL KERNEL RAKNET CELERY]];
G2L["61"]["Name"] = [[Info]];
G2L["61"]["Position"] = UDim2.new(0.50554, 0, 0.25551, 13);


-- StarterGui.Overwrite.CloseConsole
G2L["62"] = Instance.new("TextButton", G2L["1"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["TextSize"] = 20;
G2L["62"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["62"]["ZIndex"] = 3;
G2L["62"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["62"]["BackgroundTransparency"] = 1;
G2L["62"]["Size"] = UDim2.new(0, 173, 0, 20);
G2L["62"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["62"]["Text"] = [[]];
G2L["62"]["Name"] = [[CloseConsole]];
G2L["62"]["Visible"] = false;
G2L["62"]["Position"] = UDim2.new(0, 99, 1, -205);


-- StarterGui.Overwrite.CloseConsole.Title
G2L["63"] = Instance.new("TextLabel", G2L["62"]);
G2L["63"]["TextWrapped"] = true;
G2L["63"]["ZIndex"] = 4;
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["TextSize"] = 20;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["63"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["63"]["BackgroundTransparency"] = 1;
G2L["63"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["63"]["Text"] = [[Close console]];
G2L["63"]["Name"] = [[Title]];
G2L["63"]["Position"] = UDim2.new(0.01429, 0, 0, 0);


-- StarterGui.Overwrite.CloseConsole.Border
G2L["64"] = Instance.new("Frame", G2L["62"]);
G2L["64"]["ZIndex"] = 4;
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["Size"] = UDim2.new(0.02857, 0, 1.25806, 0);
G2L["64"]["Position"] = UDim2.new(-0.02857, 0, -0.12903, 0);
G2L["64"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["64"]["Name"] = [[Border]];


-- StarterGui.Overwrite.CloseConsole.Border.GradientRotation
G2L["65"] = Instance.new("LocalScript", G2L["64"]);
G2L["65"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.CloseConsole.Border.UIGradient
G2L["66"] = Instance.new("UIGradient", G2L["64"]);
G2L["66"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.CloseConsole.Border
G2L["67"] = Instance.new("Frame", G2L["62"]);
G2L["67"]["ZIndex"] = 4;
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["Size"] = UDim2.new(0.02857, 0, 1.25806, 0);
G2L["67"]["Position"] = UDim2.new(1, 0, -0.12903, 0);
G2L["67"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["67"]["Name"] = [[Border]];


-- StarterGui.Overwrite.CloseConsole.Border.GradientRotation
G2L["68"] = Instance.new("LocalScript", G2L["67"]);
G2L["68"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.CloseConsole.Border.UIGradient
G2L["69"] = Instance.new("UIGradient", G2L["67"]);
G2L["69"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.CloseConsole.Border
G2L["6a"] = Instance.new("Frame", G2L["62"]);
G2L["6a"]["ZIndex"] = 4;
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["Size"] = UDim2.new(1, 0, 0.12903, 0);
G2L["6a"]["Position"] = UDim2.new(0, 0, -0.12903, 0);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6a"]["Name"] = [[Border]];


-- StarterGui.Overwrite.CloseConsole.Border.GradientRotation
G2L["6b"] = Instance.new("LocalScript", G2L["6a"]);
G2L["6b"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.CloseConsole.Border.UIGradient
G2L["6c"] = Instance.new("UIGradient", G2L["6a"]);
G2L["6c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(147, 24, 241)),ColorSequenceKeypoint.new(0.504, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(193, 46, 255))};


-- StarterGui.Overwrite.CloseConsole.Border
G2L["6d"] = Instance.new("Frame", G2L["62"]);
G2L["6d"]["ZIndex"] = 4;
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["Size"] = UDim2.new(1, 0, 0.12903, 0);
G2L["6d"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6d"]["Name"] = [[Border]];


-- StarterGui.Overwrite.CloseConsole.Border.UIGradient
G2L["6e"] = Instance.new("UIGradient", G2L["6d"]);
G2L["6e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.CloseConsole.Border.GradientRotation
G2L["6f"] = Instance.new("LocalScript", G2L["6d"]);
G2L["6f"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.CloseConsole.DarkBorder
G2L["70"] = Instance.new("Frame", G2L["62"]);
G2L["70"]["ZIndex"] = 2;
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["70"]["Position"] = UDim2.new(0.01429, 0, 0.09677, 0);
G2L["70"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["70"]["Name"] = [[DarkBorder]];


-- StarterGui.Overwrite.CloseConsole.DarkBorder.UIStroke
G2L["71"] = Instance.new("UIStroke", G2L["70"]);
G2L["71"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["71"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["71"]["Thickness"] = 3;
G2L["71"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Overwrite.CloseConsole.DarkBorder.UIStroke.UIGradient
G2L["72"] = Instance.new("UIGradient", G2L["71"]);
G2L["72"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(95, 19, 150)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(102, 20, 159)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(100, 20, 161))};


-- StarterGui.Overwrite.CloseConsole.DarkBorder.UIStroke.GradientRotation
G2L["73"] = Instance.new("LocalScript", G2L["71"]);
G2L["73"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Console
G2L["74"] = Instance.new("Frame", G2L["1"]);
G2L["74"]["Visible"] = false;
G2L["74"]["ZIndex"] = 6;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["Size"] = UDim2.new(1, -20, 0, 176);
G2L["74"]["Position"] = UDim2.new(0, 10, 1, -181);
G2L["74"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["74"]["Name"] = [[Console]];
G2L["74"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Console.PageBorder
G2L["75"] = Instance.new("UIStroke", G2L["74"]);
G2L["75"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["75"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["75"]["Name"] = [[PageBorder]];
G2L["75"]["Thickness"] = 5;
G2L["75"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Overwrite.Console.PageBorder.UIGradient
G2L["76"] = Instance.new("UIGradient", G2L["75"]);
G2L["76"]["Rotation"] = 22.69553;
G2L["76"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Console.PageBorder.GradientRotation
G2L["77"] = Instance.new("LocalScript", G2L["75"]);
G2L["77"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Console.Main
G2L["78"] = Instance.new("Frame", G2L["74"]);
G2L["78"]["ZIndex"] = 9;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(162, 30, 255);
G2L["78"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["78"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["78"]["Name"] = [[Main]];
G2L["78"]["BackgroundTransparency"] = 1;


-- StarterGui.Overwrite.Console.Main.0
G2L["79"] = Instance.new("TextLabel", G2L["78"]);
G2L["79"]["TextWrapped"] = true;
G2L["79"]["ZIndex"] = 10;
G2L["79"]["TextSize"] = 14;
G2L["79"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["79"]["TextColor3"] = Color3.fromRGB(183, 56, 255);
G2L["79"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["79"]["Text"] = [[]];
G2L["79"]["Name"] = [[0]];


-- StarterGui.Overwrite.Console.Main.1
G2L["7a"] = Instance.new("TextLabel", G2L["78"]);
G2L["7a"]["TextWrapped"] = true;
G2L["7a"]["ZIndex"] = 10;
G2L["7a"]["TextSize"] = 14;
G2L["7a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7a"]["TextColor3"] = Color3.fromRGB(183, 56, 255);
G2L["7a"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["7a"]["Text"] = [[]];
G2L["7a"]["Name"] = [[1]];
G2L["7a"]["Position"] = UDim2.new(0, 0, 0.9, 0);


-- StarterGui.Overwrite.Console.Main.2
G2L["7b"] = Instance.new("TextLabel", G2L["78"]);
G2L["7b"]["TextWrapped"] = true;
G2L["7b"]["ZIndex"] = 10;
G2L["7b"]["TextSize"] = 14;
G2L["7b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7b"]["TextColor3"] = Color3.fromRGB(183, 56, 255);
G2L["7b"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["7b"]["Text"] = [[]];
G2L["7b"]["Name"] = [[2]];
G2L["7b"]["Position"] = UDim2.new(0, 0, 0.2, 0);


-- StarterGui.Overwrite.Console.Main.3
G2L["7c"] = Instance.new("TextLabel", G2L["78"]);
G2L["7c"]["TextWrapped"] = true;
G2L["7c"]["ZIndex"] = 10;
G2L["7c"]["TextSize"] = 14;
G2L["7c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7c"]["TextColor3"] = Color3.fromRGB(183, 56, 255);
G2L["7c"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["7c"]["Text"] = [[]];
G2L["7c"]["Name"] = [[3]];
G2L["7c"]["Position"] = UDim2.new(0, 0, 0.4, 0);


-- StarterGui.Overwrite.Console.Main.4
G2L["7d"] = Instance.new("TextLabel", G2L["78"]);
G2L["7d"]["TextWrapped"] = true;
G2L["7d"]["ZIndex"] = 10;
G2L["7d"]["TextSize"] = 14;
G2L["7d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7d"]["TextColor3"] = Color3.fromRGB(183, 56, 255);
G2L["7d"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["7d"]["Text"] = [[]];
G2L["7d"]["Name"] = [[4]];
G2L["7d"]["Position"] = UDim2.new(0, 0, 0.6, 0);


-- StarterGui.Overwrite.Console.Main.5
G2L["7e"] = Instance.new("TextLabel", G2L["78"]);
G2L["7e"]["TextWrapped"] = true;
G2L["7e"]["ZIndex"] = 10;
G2L["7e"]["TextSize"] = 14;
G2L["7e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7e"]["TextColor3"] = Color3.fromRGB(183, 56, 255);
G2L["7e"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["7e"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["7e"]["Text"] = [[]];
G2L["7e"]["Name"] = [[5]];
G2L["7e"]["Position"] = UDim2.new(0, 0, 0.8, 0);


-- StarterGui.Overwrite.Console.Main.6
G2L["7f"] = Instance.new("TextLabel", G2L["78"]);
G2L["7f"]["TextWrapped"] = true;
G2L["7f"]["ZIndex"] = 10;
G2L["7f"]["TextSize"] = 14;
G2L["7f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7f"]["TextColor3"] = Color3.fromRGB(183, 56, 255);
G2L["7f"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["7f"]["Text"] = [[]];
G2L["7f"]["Name"] = [[6]];
G2L["7f"]["Position"] = UDim2.new(0, 0, 0.1, 0);


-- StarterGui.Overwrite.Console.Main.7
G2L["80"] = Instance.new("TextLabel", G2L["78"]);
G2L["80"]["TextWrapped"] = true;
G2L["80"]["ZIndex"] = 10;
G2L["80"]["TextSize"] = 14;
G2L["80"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["80"]["TextColor3"] = Color3.fromRGB(183, 56, 255);
G2L["80"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["80"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["80"]["Text"] = [[]];
G2L["80"]["Name"] = [[7]];
G2L["80"]["Position"] = UDim2.new(0, 0, 0.3, 0);


-- StarterGui.Overwrite.Console.Main.8
G2L["81"] = Instance.new("TextLabel", G2L["78"]);
G2L["81"]["TextWrapped"] = true;
G2L["81"]["ZIndex"] = 10;
G2L["81"]["TextSize"] = 14;
G2L["81"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["81"]["TextColor3"] = Color3.fromRGB(183, 56, 255);
G2L["81"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["81"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["81"]["Text"] = [[]];
G2L["81"]["Name"] = [[8]];
G2L["81"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Overwrite.Console.Main.9
G2L["82"] = Instance.new("TextLabel", G2L["78"]);
G2L["82"]["TextWrapped"] = true;
G2L["82"]["ZIndex"] = 10;
G2L["82"]["TextSize"] = 14;
G2L["82"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["82"]["TextColor3"] = Color3.fromRGB(183, 56, 255);
G2L["82"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["82"]["BorderColor3"] = Color3.fromRGB(162, 30, 255);
G2L["82"]["Text"] = [[]];
G2L["82"]["Name"] = [[9]];
G2L["82"]["Position"] = UDim2.new(0, 0, 0.7, 0);


-- StarterGui.Overwrite.Console.Main.UIListLayout
G2L["83"] = Instance.new("UIListLayout", G2L["78"]);



-- StarterGui.Overwrite.Console.ToggleErrors
G2L["84"] = Instance.new("TextButton", G2L["74"]);
G2L["84"]["BorderSizePixel"] = 0;
G2L["84"]["TextSize"] = 20;
G2L["84"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["84"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["84"]["ZIndex"] = 12;
G2L["84"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["84"]["BackgroundTransparency"] = 1;
G2L["84"]["Size"] = UDim2.new(0, 160, 0, 20);
G2L["84"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["84"]["Text"] = [[]];
G2L["84"]["Name"] = [[ToggleErrors]];
G2L["84"]["Position"] = UDim2.new(1, -100, 1, -20);


-- StarterGui.Overwrite.Console.ToggleErrors.Border
G2L["85"] = Instance.new("Frame", G2L["84"]);
G2L["85"]["ZIndex"] = 12;
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["Size"] = UDim2.new(0.02857, 0, 1.25806, 0);
G2L["85"]["Position"] = UDim2.new(1, 0, -0.12903, 0);
G2L["85"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["85"]["Name"] = [[Border]];


-- StarterGui.Overwrite.Console.ToggleErrors.Border.GradientRotation
G2L["86"] = Instance.new("LocalScript", G2L["85"]);
G2L["86"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Console.ToggleErrors.Border.UIGradient
G2L["87"] = Instance.new("UIGradient", G2L["85"]);
G2L["87"]["Rotation"] = 114.62804;
G2L["87"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Console.ToggleErrors.Border
G2L["88"] = Instance.new("Frame", G2L["84"]);
G2L["88"]["ZIndex"] = 12;
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["Size"] = UDim2.new(1, 0, 0.12903, 0);
G2L["88"]["Position"] = UDim2.new(0, 0, -0.12903, 0);
G2L["88"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["88"]["Name"] = [[Border]];


-- StarterGui.Overwrite.Console.ToggleErrors.Border.GradientRotation
G2L["89"] = Instance.new("LocalScript", G2L["88"]);
G2L["89"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Console.ToggleErrors.Border.UIGradient
G2L["8a"] = Instance.new("UIGradient", G2L["88"]);
G2L["8a"]["Rotation"] = 114.62804;
G2L["8a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(147, 24, 241)),ColorSequenceKeypoint.new(0.504, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(193, 46, 255))};


-- StarterGui.Overwrite.Console.ToggleErrors.Title
G2L["8b"] = Instance.new("TextLabel", G2L["84"]);
G2L["8b"]["TextWrapped"] = true;
G2L["8b"]["ZIndex"] = 13;
G2L["8b"]["BorderSizePixel"] = 0;
G2L["8b"]["TextSize"] = 20;
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8b"]["FontFace"] = Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8b"]["TextColor3"] = Color3.fromRGB(162, 30, 255);
G2L["8b"]["BackgroundTransparency"] = 1;
G2L["8b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["8b"]["Text"] = [[Toggle errors]];
G2L["8b"]["Name"] = [[Title]];
G2L["8b"]["Position"] = UDim2.new(0.01429, 0, 0, 0);


-- StarterGui.Overwrite.Console.ToggleErrors.DarkBorder
G2L["8c"] = Instance.new("Frame", G2L["84"]);
G2L["8c"]["ZIndex"] = 11;
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8c"]["Position"] = UDim2.new(0.01429, 0, 0.09677, 0);
G2L["8c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["8c"]["Name"] = [[DarkBorder]];


-- StarterGui.Overwrite.Console.ToggleErrors.DarkBorder.UIStroke
G2L["8d"] = Instance.new("UIStroke", G2L["8c"]);
G2L["8d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["8d"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["8d"]["Thickness"] = 3;
G2L["8d"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Overwrite.Console.ToggleErrors.DarkBorder.UIStroke.GradientRotation
G2L["8e"] = Instance.new("LocalScript", G2L["8d"]);
G2L["8e"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Console.ToggleErrors.DarkBorder.UIStroke.UIGradient
G2L["8f"] = Instance.new("UIGradient", G2L["8d"]);
G2L["8f"]["Rotation"] = 114.62804;
G2L["8f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(95, 19, 150)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(102, 20, 159)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(100, 20, 161))};


-- StarterGui.Overwrite.Console.ToggleErrors.Border
G2L["90"] = Instance.new("Frame", G2L["84"]);
G2L["90"]["ZIndex"] = 12;
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["Size"] = UDim2.new(1, 0, 0.12903, 0);
G2L["90"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["90"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["90"]["Name"] = [[Border]];


-- StarterGui.Overwrite.Console.ToggleErrors.Border.GradientRotation
G2L["91"] = Instance.new("LocalScript", G2L["90"]);
G2L["91"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Console.ToggleErrors.Border.UIGradient
G2L["92"] = Instance.new("UIGradient", G2L["90"]);
G2L["92"]["Rotation"] = 114.62804;
G2L["92"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Console.ToggleErrors.Border
G2L["93"] = Instance.new("Frame", G2L["84"]);
G2L["93"]["ZIndex"] = 12;
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["Size"] = UDim2.new(0.02857, 0, 1.25806, 0);
G2L["93"]["Position"] = UDim2.new(-0.02857, 0, -0.12903, 0);
G2L["93"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["93"]["Name"] = [[Border]];


-- StarterGui.Overwrite.Console.ToggleErrors.Border.GradientRotation
G2L["94"] = Instance.new("LocalScript", G2L["93"]);
G2L["94"]["Name"] = [[GradientRotation]];


-- StarterGui.Overwrite.Console.ToggleErrors.Border.UIGradient
G2L["95"] = Instance.new("UIGradient", G2L["93"]);
G2L["95"]["Rotation"] = 114.62804;
G2L["95"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 28, 241)),ColorSequenceKeypoint.new(0.501, Color3.fromRGB(187, 26, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(187, 26, 255))};


-- StarterGui.Overwrite.Main.TopBar.Close.DarkBorder.DarkBorder.GradientRotation
local function C_d()
	local script = G2L["d"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_d);
-- StarterGui.Overwrite.Main.TopBar.PageButtons.Page1.UIStroke.GradientRotation
local function C_15()
	local script = G2L["15"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_15);
-- StarterGui.Overwrite.Main.Borders.DarkBorder.UIStroke.GradientRotation
local function C_1c()
	local script = G2L["1c"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_1c);
-- StarterGui.Overwrite.Main.MainBorder.GradientRotation
local function C_1f()
	local script = G2L["1f"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_1f);
-- StarterGui.Overwrite.Main.PageHandler
local function C_20()
	local script = G2L["20"];
	local Main = script.Parent
	local Console = script.Parent.Parent.Console
	local TopBar = Main.TopBar
	local PageButtons = Main.TopBar.PageButtons
	local Pages = Main.Pages
	local CloseButton = TopBar.Close

	local DefaultButtonColor = PageButtons.Page1.UIStroke.UIGradient.Color
	local DefaultDarkButtonColor = CloseButton.DarkBorder.DarkBorder.UIGradient.Color

	local Player = game:GetService("Players").LocalPlayer

	local CurrentActivePage = "Welcome"

	function ButtonMouseEnter(Object)
		for _,Object in pairs(Object:GetDescendants()) do
			if Object:IsA("UIGradient") then
				if Object.Parent.Name == "DarkBorder" then
					Object.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromHSV(0.761, 0.711406, 0.584314)),
						ColorSequenceKeypoint.new(.5, Color3.fromHSV(0.763389, 0.708858, 0.619608)),
						ColorSequenceKeypoint.new(1, Color3.fromHSV(0.761056, 0.706249, 0.627451))
					}
				else
					Object.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromHSV(0.761778, 0.758339, 0.941176)),
						ColorSequenceKeypoint.new(.5, Color3.fromHSV(0.783333, 0.755882, 1)),
						ColorSequenceKeypoint.new(1, Color3.fromHSV(0.783333, 0.76667, 1))
					}
				end
			end
		end
	end

	function ButtonMouseLeave(Object)
		for _,Object in pairs(Object:GetDescendants()) do
			if Object:IsA("UIGradient") then
				if Object:IsA("UIGradient") then
					if Object.Parent.Name == "DarkBorder" then
						Object.Color = DefaultDarkButtonColor
					else
						Object.Color = DefaultButtonColor
					end
				end
			end
		end

		if Object.TextSize == 17 then
			Object.Size = UDim2.new(0,120,0,27)
			Object.TextSize = 19
		end
	end

	function UpdateActivePages()
		for _,Page in pairs(Pages:GetChildren()) do
			if CurrentActivePage ~= Page.Name then
				Page.Visible = false
			else
				Page.Visible = true
			end
		end
	end

	function ButtonMouseDown(Object)
		Object.Size = UDim2.new(0,108,0,24.5)
		Object.TextSize = 17

		CurrentActivePage = Object.Name
		UpdateActivePages()
	end

	function ButtonMouseUp(Object)
		Object.Size = UDim2.new(0,120,0,27)
		Object.TextSize = 19
	end

	for _, Object in pairs(PageButtons:GetChildren()) do
		if Object:IsA("TextButton") then
			Object.MouseEnter:Connect(function() ButtonMouseEnter(Object) end)

			Object.MouseLeave:Connect(function() ButtonMouseLeave(Object) end)

			Object.MouseButton1Down:Connect(function() ButtonMouseDown(Object) end)

			Object.MouseButton1Up:Connect(function() ButtonMouseUp(Object) end)
		end
	end

	CloseButton.MouseEnter:Connect(function()ButtonMouseEnter(CloseButton)end)

	CloseButton.MouseLeave:Connect(function()ButtonMouseLeave(CloseButton) end)

	CloseButton.MouseButton1Down:Connect(function()
		CloseButton.Size = UDim2.new(0,40,0,40)
		CloseButton.TextSize = 35

		Main.Parent.Enabled = false
	end)

	CloseButton.MouseButton1Up:Connect(function()
		CloseButton.Size = UDim2.new(0,40,0,40)
		CloseButton.TextSize = 35
	end)

	function dragify(Frame)
		local dragToggle = nil
		local dragSpeed = 0
		local dragInput = nil
		local dragStart = nil
		local dragPos = nil
		local startPos
		Frame.InputBegan:Connect(function(input)

			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch)then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		local function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
		end

		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end

	dragify(Main)
	dragify(Console)
	UpdateActivePages()
end;
task.spawn(C_20);
-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.GradientRotation
local function C_2c()
	local script = G2L["2c"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_2c);
-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.GradientRotation
local function C_2f()
	local script = G2L["2f"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_2f);
-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.GradientRotation
local function C_32()
	local script = G2L["32"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_32);
-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.Border.GradientRotation
local function C_36()
	local script = G2L["36"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_36);
-- StarterGui.Overwrite.Main.Pages.Page1.Overwrite.DarkBorder.UIStroke.GradientRotation
local function C_3a()
	local script = G2L["3a"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_3a);
-- StarterGui.Overwrite.Main.Pages.Page1.PageBorder.GradientRotation
local function C_3d()
	local script = G2L["3d"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =  TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_3d);
-- StarterGui.Overwrite.Main.Pages.Page1.Page1Main
local function C_58()
	local script = G2L["58"];
	local Players = game:GetService("Players")
	local Player = Players.LocalPlayer

	local Page1 = script.Parent
	local OverwriteRem = script:FindFirstAncestor("Overwrite")
	local Target = Page1:WaitForChild("Target")
	local ValueType = Page1.StatValueType
	local ActList = Page1.ActList
	local OverwriteButton = Page1.Overwrite
	local Stat = ActList.Stat
	local Act = ActList.Act

	local StatTargetTextBox = Stat.StatTargetTextBox
	local AutofillStatname = StatTargetTextBox.AutofillStat
	local NewValueTextBox = Stat.NewValueTextBox
	local AutofillValue = NewValueTextBox.AutofillValue

	local TargetTextBox = Target.TargetTextBox
	local AutofillUsername = TargetTextBox.AutofillUsername

	local ActTypeText = Act.ActTypeText
	local AutofillActType = ActTypeText.AutofillActType

	local SelectionFrame = Page1.SelectionFrame
	local ActToggle = SelectionFrame.Act
	local StatToggle = SelectionFrame.Stat
	local ChatMessageToggle = Page1.ChatMessageToggle

	local OldOverwriteColorDark = OverwriteButton.DarkBorder.UIStroke.UIGradient.Color
	local OldOverwriteColor = OverwriteButton.Border.UIGradient.Color

	local TargetLeavingGame
	local TargetFocusLost
	local ActFocusLost
	local StatFocusLost
	local ValueBoxFocusLost

	local ExistingAttributes = {
		Stamina = 0,
		MaxStamina = 0,
		Attack = 0,
		Defense = 0
	}

	local ActTypes = {"KILL"}

	local AutofillValueDic = {
		["number"] = {
			["math.huge"] = math.huge,
			["infinite"] = math.huge,
			["nan"] = 0/0
		},
		["boolean"] = {
			["true"] = true,
			["false"] = false,
			["nil"] = nil,
		}
	}

	_G.OverwriteData = {
		Target = Player,
		Chat = false
	}

	TargetTextBox.Text = string.upper(Player.Name)
	local TargetPlayer = Player

	local OverwritingEnabled = true
	local ActsEnabled = true

	function ManageUI(EnableActs, EnableOverwrite)
		local Transparency = -0.5
		local GradientTransparency = 0

		if EnableActs ~= nil then
			if EnableActs and not ActsEnabled then
				ActsEnabled = true
			elseif not EnableActs and ActsEnabled then
				ActsEnabled = false
				Transparency = 0.5
				GradientTransparency = 0.5
			else
				return
			end

			for _, Object in pairs(ActList:GetDescendants()) do
				if Object:IsA("TextBox") or Object:IsA("TextLabel") or Object:IsA("TextButton") then
					Object.TextTransparency = Object.TextTransparency + Transparency
				elseif Object:IsA("UIGradient") and Object.Parent.Name ~= "PageBorder" then
					Object.Transparency = NumberSequence.new{
						NumberSequenceKeypoint.new(0, GradientTransparency),
						NumberSequenceKeypoint.new(1, GradientTransparency)
					}
				end
				if Object:IsA("TextBox") then
					Object.TextEditable = EnableActs
					Object.Active = EnableActs
				elseif Object:IsA("TextButton") then
					Object.Active = EnableActs
					Object.Selectable = EnableActs
				end
			end

			for _, Object in pairs(SelectionFrame:GetChildren()) do
				if Object:IsA("TextButton") then
					Object.TextTransparency = Object.TextTransparency + Transparency
					Object.Active = EnableActs
					Object.Selectable = EnableActs
				end
			end
			ValueType.TextTransparency = ValueType.TextTransparency + Transparency
		end

		if EnableOverwrite ~= nil then
			if EnableOverwrite and not OverwritingEnabled then
				OverwritingEnabled = true
			elseif not EnableOverwrite and OverwritingEnabled then
				OverwritingEnabled = false
				Transparency = 0.5
				GradientTransparency = 0.5
			else
				return
			end

			for _, Object in pairs(OverwriteButton:GetDescendants()) do
				if Object:IsA("TextBox") or Object:IsA("TextLabel") or Object:IsA("TextButton") then
					Object.TextTransparency = Object.TextTransparency + Transparency
				elseif Object:IsA("UIGradient") and Object.Parent.Name ~= "MainBorder" then
					Object.Transparency = NumberSequence.new{
						NumberSequenceKeypoint.new(0, GradientTransparency),
						NumberSequenceKeypoint.new(1, GradientTransparency)
					}
				end
				if Object:IsA("TextBox") then
					Object.TextEditable = EnableOverwrite
					Object.Active = EnableOverwrite
				elseif Object:IsA("TextButton") then
					Object.Active = EnableOverwrite
					Object.Selectable = EnableOverwrite
				end
			end
			OverwriteButton.TextTransparency = OverwriteButton.TextTransparency + Transparency
			OverwriteButton.Active = EnableOverwrite
			OverwriteButton.Selectable = EnableOverwrite
		end
	end

	function UpdateAttributeTable()
		for _,Object in pairs(workspace:GetChildren()) do
			if Object:IsA("Model") then
				for Name,Value in pairs(Object:GetAttributes()) do
					if Value ~= nil and ((not ExistingAttributes[Name]) or ExistingAttributes[Name] and typeof(Value) ~= typeof(ExistingAttributes[Name])) then
						ExistingAttributes[Name] = Value
					elseif ExistingAttributes[Name] and typeof(Value) ~= typeof(ExistingAttributes[Name]) then

					end
				end
			end
		end
	end

	function GetData(SettingName)
		local Data = {}
		Data.Target = TargetPlayer
		Data.Type = SettingName
		Data.ChatMessage = ChatMessageToggle.Toggled.Value

		if SettingName == "Act" then
			Data.ActType = ActTypeText.Text
		elseif SettingName == "Stat" then
			Data.StatName = foundStat
			Data.NewValue = NewValueTextBox:GetAttribute("TrueValue")
		end

		return Data
	end

	function ButtonMouseEnter(Object)
		for _,Object in pairs(Object:GetDescendants()) do
			if Object:IsA("UIGradient") then
				if Object.Parent.Parent.Name == "DarkBorder" then
					Object.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromHSV(0.761, 0.711406, 0.584314)),
						ColorSequenceKeypoint.new(.5, Color3.fromHSV(0.763389, 0.708858, 0.619608)),
						ColorSequenceKeypoint.new(1, Color3.fromHSV(0.761056, 0.706249, 0.627451))
					}
				else
					Object.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromHSV(0.761778, 0.758339, 0.941176)),
						ColorSequenceKeypoint.new(.5, Color3.fromHSV(0.783333, 0.755882, 1)),
						ColorSequenceKeypoint.new(1, Color3.fromHSV(0.783333, 0.76667, 1))
					}
				end
			end
		end
	end

	function ButtonMouseLeave(Object)
		for _,Object in pairs(Object:GetDescendants()) do
			if Object:IsA("UIGradient") then
				if Object:IsA("UIGradient") then
					if Object.Parent.Parent.Name == "DarkBorder" then
						Object.Color = OldOverwriteColorDark
					else
						Object.Color = OldOverwriteColor
					end
				end
			end
		end

		if Object.TextSize == 17 then
			Object.Size = UDim2.new(0,120,0,27)
			Object.TextSize = 19
		end
	end

	TargetTextBox:GetPropertyChangedSignal("Text"):Connect(function()
		local TargetName = TargetTextBox.Text
		AutofillUsername.Text = ""
		local foundTarget
		local foundTargetName

		if TargetFocusLost then
			TargetFocusLost:Disconnect()
		end

		if TargetLeavingGame then
			TargetLeavingGame:Disconnect()
		end

		if TargetName ~= "" then
			for _,Player in pairs(Players:GetChildren()) do
				if string.lower(Player.Name):sub(1, #TargetName) == string.lower(TargetName) then
					foundTarget = Player
					foundTargetName = Player.Name
					AutofillUsername.Text = Player.Name
					break
				elseif string.lower(Player.DisplayName):sub(1, #TargetName) == string.lower(TargetName) then
					foundTarget = Player
					foundTargetName = Player.DisplayName
					AutofillUsername.Text = Player.DisplayName
					break
				end
			end
			if not foundTarget then
				for _,Object in pairs(game.Workspace:GetChildren()) do
					if Object:FindFirstChildWhichIsA("Humanoid") and Object:GetAttribute("Defense") then
						if string.lower(Object.Name):sub(1, #TargetName) == string.lower(TargetName) then
							foundTarget = Object
							AutofillUsername.Text = Object.Name
							break
						end
					end
				end
			end
		end

		if not foundTarget then
			AutofillUsername.Text = ""
		end

		TargetFocusLost = TargetTextBox.FocusLost:Connect(function()
			TargetFocusLost:Disconnect()
			if foundTarget then
				TargetTextBox.Text = string.upper(AutofillUsername.Text)

				_G.OverwriteData["Target"] = AutofillUsername.Text
				ManageUI(true, nil)
				if SelectedAmount > 0 then
					ManageUI(nil, true)
				end

				TargetLeavingGame = Players.PlayerRemoving:Connect(function(Plr)
					if Plr == foundTarget then
						TargetLeavingGame:Disconnect()
						TargetTextBox.Text = "Target left the game"
						ManageUI(false, false)
						task.wait(2)
						TargetTextBox.Text = "???"
					end
				end)
				TargetPlayer = foundTarget
			else
				TargetTextBox.Text = "???"
				ManageUI(false, false)
			end
			AutofillUsername.Text = ""			
		end)
	end)


	StatTargetTextBox:GetPropertyChangedSignal("Text"):Connect(function()
		local StatName = StatTargetTextBox.Text
		AutofillStatname.Text = ""
		foundStat = nil
		foundStatType = nil
		StatToggle.TextTransparency = 0.5
		StatToggle.Toggled.Value = false

		if StatFocusLost then
			StatFocusLost:Disconnect()
		end

		if StatName ~= "" then
			if TargetPlayer and TargetPlayer:FindFirstChild("PlayerData") then
				for _,ValueObject in pairs(TargetPlayer:FindFirstChild("PlayerData"):GetChildren()) do
					if string.lower(ValueObject.Name):sub(1, #StatName) == string.lower(StatName) then
						foundStat = ValueObject.Name
						AutofillStatname.Text = string.lower(ValueObject.Name)
						foundStatType = typeof(ValueObject.Value)
					end
				end
			end

			UpdateAttributeTable()
			for Name,Value in pairs(ExistingAttributes) do
				if string.lower(Name):sub(1, #StatName) == string.lower(StatName) then
					foundStat = Name
					AutofillStatname.Text = string.lower(Name)
					foundStatType = typeof(Value)
				end
			end
		end

		StatFocusLost = StatTargetTextBox.FocusLost:Connect(function()
			StatFocusLost:Disconnect()
			if foundStat then
				StatTargetTextBox.Text = string.upper(foundStat)
				ValueType.Text = "[STAT_VALUE_TYPE] = " .. string.upper(foundStatType)
			else
				AutofillStatname.Text = ""
				ValueType.Text = "[STAT_VALUE_TYPE] = ???"
				StatTargetTextBox.Text = string.upper(StatTargetTextBox.Text)
			end
			AutofillStatname.Text = ""			
		end)
	end)


	NewValueTextBox:GetPropertyChangedSignal("Text"):Connect(function()
		local NewValue = NewValueTextBox.Text
		AutofillValue.Text = ""
		local foundValuetoAutofill = nil
		StatToggle.TextTransparency = 0.5
		StatToggle.Toggled.Value = false

		if NewValue == "" or NewValue == nil then 
			return
		end

		if foundStatType then
			NewValueTextBox.Text = "0"
			NewValueTextBox:SetAttribute("TrueValue", 0)
		end
	end)

	ActTypeText:GetPropertyChangedSignal("Text"):Connect(function()
		local ActType = ActTypeText.Text
		AutofillActType.Text = ""
		local foundActType = nil

		ActToggle.TextTransparency = 0.5
		ActToggle.Toggled.Value = false

		if ActType == "" or ActType == nil then 
			return
		end

		if ActFocusLost then
			ActFocusLost:Disconnect()
		end

		for _,TypeName in pairs(ActTypes) do
			if string.lower(TypeName):sub(1, #ActType) == string.lower(ActType) then
				foundActType = TypeName
				AutofillActType.Text = string.lower(foundActType)
				break
			end
		end

		if not foundActType or foundActType == "" then
			foundActType = nil
			AutofillActType.Text = ""
		end

		ActFocusLost = ActTypeText.FocusLost:Connect(function()
			ActFocusLost:Disconnect()
			if foundActType then
				ActTypeText.Text = foundActType
			else
				ActTypeText.Text = ""
			end
			AutofillActType.Text = ""
		end)
	end)


	OverwriteButton.MouseEnter:Connect(function()
		if not OverwritingEnabled then return end
		ButtonMouseEnter(OverwriteButton)
	end)

	OverwriteButton.MouseLeave:Connect(function()
		if not OverwritingEnabled then return end
		ButtonMouseLeave(OverwriteButton)
	end)

	OverwriteButton.MouseButton1Down:Connect(function()
		if OverwritingEnabled == true then
			OverwriteButton.Size = UDim2.new(0,128.3,0,27.5)
			OverwriteButton.Title.TextSize = 18

			for _, Object in pairs(SelectionFrame:GetChildren()) do
				if Object:FindFirstChild("Toggled") then
					if Object.Toggled.Value then
						print(Object.Name, _G.OverwriteData.Target, _G.OverwriteData.Chat)
						wait()
					end
				end
			end
		end
	end)

	OverwriteButton.MouseButton1Up:Connect(function()
		if OverwritingEnabled == true then
			OverwriteButton.Size = UDim2.new(0,140,0,30)
			OverwriteButton.Title.TextSize = 20
		end
	end)

	StatToggle.MouseButton1Down:Connect(function()
		if not StatToggle.Active then return end
		if StatToggle.Toggled.Value == false then
			if StatTargetTextBox.Text ~= "" and NewValueTextBox.Text ~= "" and foundStatType then
				local NewValue = NewValueTextBox:GetAttribute("TrueValue") or NewValueTextBox.Text
				local NewStatValue = nil
				if foundStatType == "number" then
					local success, err = pcall(function()
						NewStatValue = tonumber(NewValue)
					end)
					if success and NewStatValue then
						StatToggle.TextTransparency = 0
						StatToggle.Toggled.Value = true
					else
						StatToggle.TextTransparency = 0
						StatToggle.TextColor3 = Color3.fromRGB(255, 33, 36)
						task.wait(0.25)
						StatToggle.TextTransparency = 0.5
						StatToggle.TextColor3 = Color3.fromRGB(161, 29, 255)
					end
				else
					StatToggle.TextTransparency = 0
					StatToggle.Toggled.Value = true
				end
			end
		elseif StatToggle.Toggled.Value == true then
			StatToggle.TextTransparency = 0.5
			StatToggle.Toggled.Value = false
		end
	end)

	ActToggle.MouseButton1Down:Connect(function()
		if not ActToggle.Active then return end
		if ActToggle.Toggled.Value == false then
			if ActTypeText.Text ~= "" then
				local ActType = ActTypeText.Text
				if table.find(ActTypes, ActType) then
					ActToggle.TextTransparency = 0
					ActToggle.Toggled.Value = true
				else
					ActToggle.TextColor3 = Color3.fromRGB(255, 33, 36)
					task.wait(0.25)
					ActToggle.TextTransparency = 0.5
					ActToggle.TextColor3 = Color3.fromRGB(161, 29, 255)
				end
			end
		elseif ActToggle.Toggled.Value == true then
			ActToggle.TextTransparency = 0.5
			ActToggle.Toggled.Value = false
		end
	end)

	ChatMessageToggle.MouseButton1Down:Connect(function()
		if ChatMessageToggle.Toggled.Value == false then
			ChatMessageToggle.TextTransparency = 0
			ChatMessageToggle.Toggled.Value = true
			_G.OverwriteData.Chat = true
		elseif ChatMessageToggle.Toggled.Value == true then
			ChatMessageToggle.TextTransparency = 0.5
			ChatMessageToggle.Toggled.Value = false
			_G.OverwriteData.Chat = false
		end
	end)

	for _,Object in pairs(SelectionFrame:GetChildren()) do
		SelectedAmount = 0
		if Object:FindFirstChild("Toggled") then
			Object.Toggled:GetPropertyChangedSignal("Value"):Connect(function()
				if Object.Toggled.Value == true then
					SelectedAmount = SelectedAmount + 1
				elseif Object.Toggled.Value == false then
					SelectedAmount = SelectedAmount - 1
				end
				if SelectedAmount > 0 then
					ManageUI(nil, true)
				else
					ManageUI(nil, false)
				end
			end)
		end
	end

	ManageUI(nil, false)
end;
task.spawn(C_58);
-- StarterGui.Overwrite.Main.Pages.Welcome.PageBorder.GradientRotation
local function C_5d()
	local script = G2L["5d"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =  TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_5d);
-- StarterGui.Overwrite.Main.Pages.Welcome.LocalScript
local function C_5f()
	local script = G2L["5f"];
	local PStats = {"Attack", "Blocking", "CurrentCharacter", "Defense", "Dodge", "DodgeChance", "Health", "HyperGonerDebounce", "Karma", "LastScale", "MaxHealth", "MaxSprintMeter", "MoveDebounce", "PerfectBlocking", "PName", "Poison", "RealName", "SprintMeter", "Stamina", "Type"}
	local Welcome = script.Parent
	local WelcomeMessage = Welcome.WelcomeMessage
	local Player = game:GetService("Players").LocalPlayer

	WelcomeMessage.Text = "WELCOME TO OVERWRITE, " .. string.upper(Player.Name) .. "."
end;
task.spawn(C_5f);
-- StarterGui.Overwrite.CloseConsole.Border.GradientRotation
local function C_65()
	local script = G2L["65"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_65);
-- StarterGui.Overwrite.CloseConsole.Border.GradientRotation
local function C_68()
	local script = G2L["68"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_68);
-- StarterGui.Overwrite.CloseConsole.Border.GradientRotation
local function C_6b()
	local script = G2L["6b"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_6b);
-- StarterGui.Overwrite.CloseConsole.Border.GradientRotation
local function C_6f()
	local script = G2L["6f"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_6f);
-- StarterGui.Overwrite.CloseConsole.DarkBorder.UIStroke.GradientRotation
local function C_73()
	local script = G2L["73"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_73);
-- StarterGui.Overwrite.Console.PageBorder.GradientRotation
local function C_77()
	local script = G2L["77"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =  TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_77);
-- StarterGui.Overwrite.Console.ToggleErrors.Border.GradientRotation
local function C_86()
	local script = G2L["86"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_86);
-- StarterGui.Overwrite.Console.ToggleErrors.Border.GradientRotation
local function C_89()
	local script = G2L["89"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_89);
-- StarterGui.Overwrite.Console.ToggleErrors.DarkBorder.UIStroke.GradientRotation
local function C_8e()
	local script = G2L["8e"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_8e);
-- StarterGui.Overwrite.Console.ToggleErrors.Border.GradientRotation
local function C_91()
	local script = G2L["91"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_91);
-- StarterGui.Overwrite.Console.ToggleErrors.Border.GradientRotation
local function C_94()
	local script = G2L["94"];
	local currentrot = script.Parent.UIGradient.Rotation -- Gets the initial rotation of the UIGradient
	local TweenService = game:GetService("TweenService") -- Gets the Roblox TweenService to move things smoothly.
	local TweenInformation =   TweenInfo.new(10, Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false) -- This creates the TweenInfo. The parameters are in the following order: TimeToTween, EasingStyle, EasingDirection, RepeatCount (-1 for infinite), and reverses.
	local Goal = {Rotation = currentrot + 360} -- This is our goal for the tween. 360 makes the rotation go an entire circle.
	local Tween = TweenService:Create(script.Parent.UIGradient, TweenInformation, Goal) -- Creates the tween and the parameters are: UIGradient (object) location, TweenInformation, and Goal.

	Tween:Play() -- Plays the Tween
end;
task.spawn(C_94);

return G2L["1"], require;