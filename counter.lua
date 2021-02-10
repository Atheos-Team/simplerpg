			local json = require("json")

			local random, randomseed, ceil = math.random, math.randomseed, math.ceil
			local insert, remove, concat = table.insert, table.remove, table.concat
			local gmatch, sub, find = string.gmatch, string.sub, string.find
			local open, time, clock = io.open, os.time, os.clock
			local wrap, create, yield, resume = coroutine.wrap, coroutine.create, coroutine.yield, coroutine.resume
			local parse, stringify, encode = json.parse, json.stringify, json.encode

			function wait(n)
			    local s = tonumber(clock() + n)
			    while (clock() < s) do end
			end

			while true do 

				local openg = open("gold.json", "r")
				local parseg = parse(openg:read())
				openg:close()

				local openx = open("xp.json", "r")
				local parsex = parse(openx:read())
				openx:close()

				local openm = open("max.json", "r")
				local parsem = parse(openm:read())
				openm:close()

				local openr = open("registered.json", "r")
				local parser = parse(openr:read())
				openr:close()

				local openc = open("characters.json", "r")
				local parsec = parse(openc:read())
				openc:close()

				local openl = open("lvl.json", "r")
				local parsel = parse(openl:read())
				openl:close()

				local openh = open("health.json", "r")
				local parseh = parse(openh:read())
				openh:close()

				local openmh = open("maxhealth.json", "r")
				local parsemh = parse(openmh:read())
				openmh:close()

				local opena = open("attack.json", "r")
				local parsea = parse(opena:read())
				opena:close()

				local openat = open("attacking.json", "r")
				local parseat = parse(openat:read())
				openat:close()

				local opens = open("steps.json", "r")
				local parses = parse(opens:read())
				opens:close()

				local opent = open("timeStep.json", "r")
				local parset = parse(opent:read())
				opent:close()

				print("Deity")
				print("Registered :: "..parser["Deity"])
				print("Class :: "..parsec["Deity"])
				print("Gold :: "..parseg["Deity"])
				print("Experience :: ["..parsex["Deity"].." / "..parsem["Deity"].."]")
				print("Level :: "..parsel["Deity"])
				print("Health :: ["..parseh["Deity"].." / "..parsemh["Deity"].."]")
				print("Steps :: "..parses["Deity"])
				print("Step Timestamp :: "..parset["Deity"])

				wait(10)

				os.execute("cls")
			end