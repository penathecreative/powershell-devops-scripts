param (
    [string]$DatabaseName = "EcommerceDB",
    [string]$BackupPath = "C:\Backups\EcommerceDB.bak"
)

sqlcmd -Q "BACKUP DATABASE [$DatabaseName] TO DISK = N'$BackupPath' WITH FORMAT, INIT, NAME = 'Full Backup of $DatabaseName';"
