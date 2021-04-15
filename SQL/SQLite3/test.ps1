function Get-Uptime
{
  $millisec = [Environment]::TickCount
  [Timespan]::FromMilliseconds($millisec)
}

for ($counter = 1;$counter -le 1000;$counter ++)
{
	"insert into test(name) values( $counter );"
	# "insert into test(name) values( $counter )" | sqlite3.exe .\test123.db
	# 注意两种方法，哪个速度快？
}