param (
    [string]$Username = "AppUser",
    [string]$Password = "StrongP@ssword!"
)

sqlcmd -Q @"
USE EcommerceDB;
CREATE LOGIN [$Username] WITH PASSWORD = '$Password';
CREATE USER [$Username] FOR LOGIN [$Username];
GRANT SELECT, INSERT, UPDATE ON Users TO [$Username];
"@
