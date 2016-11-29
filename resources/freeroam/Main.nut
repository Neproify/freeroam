function onResourceStart(resourceName)
{
	if(resourceName != RESOURCE_NAME)
		return;

	print("Gamemode " + GAMEMODE_NAME + " " + GAMEMODE_VERSION + " started.");
}
addEvent("resourceStarted", onResourceStart);