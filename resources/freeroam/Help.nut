function helpCMD(input, player)
{
	player.sendMessage("====== COMMANDS ======", COLOR_WHITE, false);
	player.sendMessage("/createvehicle, /weapon, /help", COLOR_WHITE, false);
	player.sendMessage("======================", COLOR_WHITE, false);
}
addEvent("CMD_help", helpCMD);