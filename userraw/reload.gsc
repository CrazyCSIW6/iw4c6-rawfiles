#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include common_scripts\utility;

init()
{
	level thread exec_on_map_start();
    level thread on_player_connect();
}

on_player_connect()
{
    for(;;)
    {
        level waittill("connected", player);

        player thread exec_on_map_start();
    }
}

exec_on_map_start()
{
    if(getDvarInt("xblive_privateserver") == 1)
        exec("exec c12.cfg;set bots_main_firstIsHost 1;set bots_main_menu 1");
    
    else 
    {
        switch(getDvar("g_gametype"))
        {
            case "dm":
                exec("exec c2.cfg;set bots_main_firstIsHost 0;set bots_main_menu 0");
				exec("set bots_main_menu 0");
				exec("set bots_manage_add 17");
                break;
            default:
                exec("exec c6.cfg;set bots_main_firstIsHost 0;set bots_main_menu 0");
				exec("set bots_main_menu 0");
				exec("set bots_manage_add 17");
                break;
        }
    }
}
