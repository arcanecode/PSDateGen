# Run code with the functions
. .\Get-DayRange.ps1
. .\Get-YyyyMmDdFormatted.ps1
. .\Get-WeekRange.ps1

Get-WeekRange -StartingDate '2023-10-29' -NumberOFWeeks 1

Get-DayRange -StartingDate '2023-10-29' -NumberOfDays 7
