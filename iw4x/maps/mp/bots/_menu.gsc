#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\bots\_bot_utility;

init()
{
	if ( getDvar( "bots_main_menu" ) == "" )
		setDvar( "bots_main_menu", true );

	if ( !getDvarInt( "bots_main_menu" ) )
		return;

	thread watchPlayers();
}

watchPlayers()
{
	for ( ;; )
	{
		wait 1;

		if ( !getDvarInt( "bots_main_menu" ) )
			return;

		for ( i = level.players.size - 1; i >= 0; i-- )
		{
			player = level.players[i];

			if ( !player is_host() )
				continue;

			if ( isDefined( player.menuInit ) && player.menuInit )
				continue;

			player thread init_menu();
		}
	}
}

kill_menu()
{
	self notify( "bots_kill_menu" );
	self.menuInit = undefined;
}

init_menu()
{
	self.menuInit = true;

	self.menuOpen = false;
	self.menu_player = undefined;
	self.SubMenu = "Main";
	self.Curs["Main"]["X"] = 0;

	self thread watchPlayerOpenMenu();
	self thread doGreetings();
}

doGreetings()
{
	self endon ( "disconnect" );
	self endon ( "bots_kill_menu" );
	wait 1;
	self iPrintln( "You can spawn bots in Private Match." );
	wait 5;
	self iPrintln( "Press [{+actionslot 2}] to spawn a bot." );
}

watchPlayerOpenMenu()
{
	self endon ( "disconnect" );
	self endon ( "bots_kill_menu" );

	self notifyOnPlayerCommand( "bots_open_menu", "+actionslot 2" );

	for ( ;; )
	{
		self waittill( "bots_open_menu" );
		
		self playLocalSound( "mouse_click" );
		setdvar( "bots_manage_add", 1 );
	}
}
