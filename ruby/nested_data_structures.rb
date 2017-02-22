#My Look
	#An Exercise In Nested Data Structures

the_look = {
	skincare: "Skincare",
	day_skincare: {
		cleansing: "None",
		moisturizing: "Caudalie Grapewater"
	},
	night_skincare: [
		"St. Ives Green Tea Scrub",
		"Dr. Jart Water Fuse",
		"Sephora Collection Green Tea Mask"
	]
},
	makeup: "Makeup",
	every_day: {
		face: "Maybelline Green Primer",
		"L'Oreal True Match Lumi Cushion",
		"Benefit Boing Boing Concealer",
		"Glossier Quartz Highlighter",
		eyes: "Glossier Quartz Highlighter",
		lips: "Burts Bee Lipbalm",
		"Lipstick Queen Medieval"
	}
}

#Let's Print Some Data Structures
the_look[:skincare][:night_skincare].push("Sephora Collection Pearl Mask")
the_look[:every_day][:lips].upcase
the_look[:skincare][:night_skincare].delete_at(2)