--!strict
-- // Imports
local Types = require(loadstring(game:HttpGet("https://github.com/IdkRandomUsernameok/PublicAssets/raw/refs/heads/main/Modules/MoveIndicator/Types.lua"))())

-- // Exports
return {
	
	Chara = {
		Modes = {
			{ Name = "Determination", Color = Color3.new(1, 0, 0), Amount = 5 },
			{ Name = "Justice", Color = Color3.new(1, 1, 0), Amount = 1 },
			{ Name = "Bravery", Color = Color3.new(1, 0.5, 0), Amount = 1 },
			{ Name = "Patience", Color = Color3.new(0, 1, 1), Amount = 2 },
			{ Name = "Integrity", Color = Color3.new(0, 0, 1), Amount = 2 },
			{ Name = "Kindness", Color = Color3.new(0, 1, 0), Amount = 2 },
			{ Name = "Perseverance", Color = Color3.new(0.666, 0, 0.666), Amount = 1 },
			{ Name = "HATE", Color = Color3.new(), OutlineColor = Color3.new(1, 1, 1), Amount = 2, Locked = {1, 2} }
		}
	},
	
	XSans = {
		Modes = {
			{ Name = "Normal", Color = Color3.new(1, 0, 0), Amount = 3 },
			{ Name = "Knives", Color = Color3.new(1, 0, 0), Amount = 4 },
			{ Name = "XChara", Color = Color3.new(0.831373, 0, 1), OutlineColor = Color3.new(1,1,1), Amount = 5 },
			{ Name = "Overwrite", Color = Color3.new(0.831373, 0, 1), OutlineColor = Color3.new(1,1,1), Amount = 4 }
		}
	},
	
	Asriel = {
		Modes = {
			{ Name = "Normal", Color = "Rainbow", Amount = 5 },
			{ Name = "True Power", Color = "Rainbow", Amount = 3 },
			{ Name = "Chaos Sabers", Color = Color3.new(1, 1, 1), Amount = 3 },
			{ Name = "Chaos Buster", Color = Color3.new(1, 1, 1), Amount = 1 }
		}
	},
	
	Stevonnie = {
		Modes = {
			{ Name = "Normal", Color = Color3.fromRGB(196, 112, 160), Amount = 6, Locked = {5, 6} }
		}
	},
	
	SSChara = {
		Modes = {
			{ Name = "Knives", Color = Color3.new(1, 0, 0), OutlineColor = Color3.new(1, 1, 1), Amount = 6 },
			{ Name = "Blasters", Color = "Rainbow", Amount = 4 }
		}
	},
	
	Sans = {
		Modes = {
			{ Name = "Bones", Color = Color3.new(1, 1, 1), Amount = 4 };
			{ Name = "Blasters", Color = Color3.new(0.509804, 1, 0.968627), Amount = 6 };
			{ Name = "Telekinesis", Color = Color3.new(0, 0.101961, 1), Amount = 3 }
		}
	};
	
	SansBadTime = {
		Modes = {
			{ Name = "Bones", Color = Color3.new(1, 1, 1), Amount = 6 };
			{ Name = "Blasters", Color = Color3.new(0.509804, 1, 0.968627), Amount = 4; Locked = {3, 4} };
			{ Name = "Telekinesis", Color = Color3.new(0, 0.101961, 1), Amount = 3 };
			{ Name = "Special", Color = Color3.new(0, 0.101961, 1), Amount = 3; Locked = {1, 2} }
		}
	};
	
	GTFrisk = {
		Modes = {
			{ Name = "Sword", Color = Color3.new(1, 0, 0), Amount = 7, Locked = {5, 6, 7} }
		}
	},
	
	Undyne = {
		Modes = {
			{ Name = "Spears", Color = Color3.new(0, 1, 1), Amount = 7, Locked = {5, 6, 7} }
		}
	};
	
	Sakuya = {
		Modes = {
			{ Name = "Knives", Color = Color3.new(1,0,0), Amount = 7 };
			{ Name = "Time", Color = Color3.new(0.8, 0.8, 0.8), Amount = 5 }
		}
	};
	
	Bunny = {
		Modes = {
			{ Name = "Carrots", Color = Color3.new(1, 0.654902, 0.235294), Amount = 4 }
		}
	};
	
	My = {
		Modes = {
			{ Name = "", Color = Color3.new(1,0,0), Amount = 5}
		}
	};
	
	My2 = {
		Modes = {
			{ Name = "", Color = Color3.new(0.0117647, 0.94902, 1), Amount = 5 }
		}
	};
	
	Betty = {
		Modes = {
			{ Name = "Normal", Color = Color3.new(0.835294, 0.345098, 1); Amount = 6 };
			{ Name = "Scythe", Color = Color3.new(0.835294, 0.345098, 1), Amount = 4, Locked = {3, 4} };
			{ Name = "True Power", Color = Color3.new(0.835294, 0.345098, 1), Amount = 8 };
			{ Name = "True Power Scythe", Color = Color3.new(0.835294, 0.345098, 1), Amount = 4 }
		} 
	};
	
	DeltaSans = {
		Modes = {
			{ Name = "Combat", Color = Color3.new(1, 0.615686, 0); Amount = 6 };
			{ Name = "Blasters", Color = Color3.new(1, 0.615686, 0); Amount = 5 };
			{ Name = "Bones", Color = Color3.new(1, 0.615686, 0), Amount = 3 };
			{ Name = "Special", Color = Color3.new(1, 0.615686, 0), Amount = 1 }
		}
	};
	
	Faceless = {
		Modes = {
			{ Name = "Dagger", Color = Color3.new(0,0,0), OutlineColor = Color3.new(1,1,1), Amount = 7}
		}
	};
	
	Shinobi = {
		Modes = {
			{ Name = "Tanto", Color = Color3.new(0,0,0), OutlineColor = Color3.new(1,1,1), Amount = 8}
		}
	};
	
	DSage = {
		Modes = {
			{ Name = "Fists (Unfinished, will probably never be finished loll)", Color = Color3.new(1, 1, 1), Amount = 2}
		}
	};
	
	Frisk = {
		Modes = {
			{ Name = "Toy Knife", Color = Color3.new(0.364706, 1, 0.956863), Amount = 1 };
			{ Name = "Tough Gloves", Color = Color3.new(1, 0.560784, 0.054902), Amount = 1 };
			{ Name = "Ballet Shoes", Color = Color3.new(0.0666667, 0, 1), Amount = 1 };
			{ Name = "Torn Notebook", Color = Color3.new(0.666667, 0, 1), Amount = 1 };
			{ Name = "Empty Gun", Color = Color3.new(1, 1, 0), Amount = 1 };
			{ Name = "Burnt Pan", Color = Color3.new(0.317647, 1, 0), Amount = 0 };
			{ Name = "Worn Dagger", Color = Color3.new(0.533333, 0.47451, 0.403922), Amount = 1 };
			{ Name = "Real Knife", Color = Color3.new(0.686275, 0, 0.0117647), Amount = 4 };
			{ Name = "Stick", Color = Color3.new(0.564706, 0.207843, 0), Amount = 0 };
			{ Name = "Fists", Color = Color3.new(1,1,1), Amount = 0 };
		}
	}
	
}:: {[string]: Types.TypeData}
