New-Item -ItemType Directory -Force -Path C:\awbackups

$downloads = @{
    "https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2017.bak" = "c:\awbackups\AdventureWorks2017.bak"
    "https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2017.bak" = "c:\awbackups\AdventureWorksDW2017.bak"
    "https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksLT2017.bak" = "c:\awbackups\AdventureWorksLT2017.bak"
}
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

ForEach($key in $downloads.Keys) {
    (New-Object System.Net.WebClient).DownloadFile($key, $downloads[$key])
}

(sqlcmd -S . -Q "RESTORE DATABASE [AdventureWorks2017] FROM  DISK = N'C:\awbackups\AdventureWorks2017.bak' WITH  FILE = 1,  MOVE N'AdventureWorks2017' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AdventureWorks2017.mdf',  MOVE N'AdventureWorks2017_log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AdventureWorks2017_log.ldf',  NOUNLOAD,  REPLACE,  STATS = 5")
(sqlcmd -S . -Q "RESTORE DATABASE [AdventureWorksDW2017] FROM  DISK = N'C:\awbackups\AdventureWorksDW2017.bak' WITH  FILE = 1,  MOVE N'AdventureWorksDW2017' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AdventureWorksDW2017.mdf',  MOVE N'AdventureWorksDW2017_log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AdventureWorksDW2017_log.ldf',  NOUNLOAD,  REPLACE,  STATS = 5")
(sqlcmd -S . -Q "RESTORE DATABASE [AdventureWorksLT2017] FROM  DISK = N'C:\awbackups\AdventureWorksLT2017.bak' WITH  FILE = 1,  MOVE N'AdventureWorksLT2012_Data' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AdventureWorksLT2012.mdf',  MOVE N'AdventureWorksLT2012_Log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AdventureWorksLT2012_log.ldf',  NOUNLOAD,  REPLACE,  STATS = 5")