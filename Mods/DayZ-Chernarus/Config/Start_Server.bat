@echo off
"C:\Program Files (x86)\MySQL\MySQL Server 5.5\bin\mysql" --user=root --password=root --host=127.0.0.1 --port=3306 --database=dayz --execute="call pMain()"
start .\Expansion\beta\arma2oaserver.exe -port=2302 -mod=@DayZ;@Server-Chernarus -name=DayZ -config=Config-Chernarus\ServerSettings.cfg -cfg=Config-Chernarus\Arma2Config.cfg -profiles=Config-Chernarus
exit