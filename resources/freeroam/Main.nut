function onResourceStart(resourceName)
{
	if(resourceName != RESOURCE_NAME)
		return;

	print("Gamemode " + GAMEMODE_NAME + " " + GAMEMODE_VERSION + " started.");
}
addEvent("resourceStarted", onResourceStart);

function onPlayerJoin(player)
{
	sendMessageToAll("Player " + player.getName() + " joined the server!", COLOR_WHITE, false);
}
addEvent("playerJoin", onPlayerJoin);

function onPlayerRequestSpawn(player)
{
	player.spawn(-547.40, -961.30, 4.84, 0);
	player.sendMessage("Welcome on freeroam running server!", COLOR_WHITE, false);
	player.sendMessage("Type /help if you need it.", COLOR_WHITE, false);
}
addEvent("playerRequestSpawn", onPlayerRequestSpawn);