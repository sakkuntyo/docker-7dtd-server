FROM "steamcmd/steamcmd:latest"

ENTRYPOINT steamcmd +login anonymous +force_install_dir "/root/7dtd" +app_update 294420 -beta latest_experimental validate +quit && cp -r /root/.local/share/7DaysToDie/Saves/Navezgane/MyGame/Mods /root/7dtd/;cp -r /root/.local/share/7DaysToDie/Saves/Navezgane/MyGame/serverconfig.xml /root/7dtd/; cd /root/7dtd/; ./startserver.sh -configfile=serverconfig.xml
