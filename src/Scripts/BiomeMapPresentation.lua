modutil.mod.Path.Wrap("BiomeMapPresentation", function(base, source, args, contextArgs)
	LoadPackages({ Name = "NikkelM-BiomeMapColoured" })
	base(source, args, contextArgs)
end)

modutil.mod.Path.Context.Wrap('BiomeMapPresentation', function()
	modutil.mod.Path.Wrap('SetAnimation', function(base, args)
		if args.Name == "GUI\\BiomeMap\\BiomeMap" then
			args.Name = "NikkelM-BiomeMapColoured\\GUI\\BiomeMap\\BiomeMapColoured"
		end
		base(args)
	end)
end)
