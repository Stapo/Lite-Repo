@echo off
Resources\mysql.exe --user=YOURMYSQLUSERNAME --password=YOURMYSQLPASSWORD --host=127.0.0.1 --port=3306 --database=YOURMYSQLDATABASE --execute="call pMain()"
start .\Expansion\beta\arma2oaserver.exe -port=2302 -mod=YOURMODS;@Server -name=DayZ -config=Config_YOURMODNAME\ServerSettings.cfg -cfg=Config_YOURMODNAME\Arma2Config.cfg -profiles=Config_YOURMODNAME
exit