<#
.SYNOPSIS
    Delete files based on prefix and date.

.DESCRIPTION
    The script deletes files with a given prefix from a specified directory if they are more than 3 days old.

.EXAMPLE

.NOTES
    Filename: DeleteFiles_LastWriteTime.ps1
    Author: Kaarel Virroja
    Modified date: 2024-08-26
    Version 1.0
#>

$Folder = ""

$FilePrefix = ""

Get-ChildItem -Path $Folder -Filter "$FilePrefix*.log" -File | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-3) } | Remove-Item