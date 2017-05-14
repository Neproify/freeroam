function weaponCMD(input, player)
{
	local args = split(input, " ");
	local argsCount = args.len();
	if(argsCount < 3)
	{
		player.sendMessage("Use: /weapon [id] [ammo]", COLOR_RED, false);
		return;
	}

	local weaponModel = args[1].tointeger();
	local ammoAmount = args[2].tointeger();
	player.giveWeapon(weaponModel, ammoAmount);
	player.sendMessage("You took weapon " + weaponModel + " and " + ammoAmount + " ammo", COLOR_WHITE, false);
}
addEvent("CMD_weapon", weaponCMD);