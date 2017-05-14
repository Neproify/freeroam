function createVehicleCMD(input, player)
{
	local args = split(input, " ");
	local argsCount = args.len();
	if(argsCount < 2)
	{
		player.sendMessage("Use: /createvehicle [id]", COLOR_RED, false);
		return;
	}

	local vehModel = args[1].tointeger();

	local vehicle = createVehicle(vehModel, player.getPosition()[0] + 2, player.getPosition()[1], player.getPosition()[2] - 1, 0, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
	vehicle.setEngine(true);
}
addEvent("CMD_cv", createVehicleCMD);
addEvent("CMD_createvehicle", createVehicleCMD);