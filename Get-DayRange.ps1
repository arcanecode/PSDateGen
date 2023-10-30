#------------------------------------------------------------------------------------------------
# Function..: Get-DayRange
# Author....: Robert C. Cain | @ArcaneCode | http://arcanecode.me
# Purpose...: Returns days in the format:
#             Weekday Mon Day
#
# Example...:
#   Sunday Oct 29
#   Monday Oct 30
#   Tuesday Oct 31
#   Wednesday Nov 1
#   Thursday Nov 2
#   Friday Nov 3
#   Saturday Nov 4
#
# Parameters:
#   StartingDate - The day to start generating from.
#   NumberOfDays -  How many days to generate dates for.
#
# Notes
#   The generated dates are automatically copied to the clipboard as part of the call.
#
#   This code is Copyright (c) 2023 Robert C. Cain. All rights reserved.
#
#   The code herein is for demonstration purposes. No warranty or guarantee
#   is implied or expressly granted.
#
#------------------------------------------------------------------------------------------------
function Get-DayRange()
{
  [CmdletBinding()]
  param (
          [Parameter( Mandatory = $true ) ]
            [datetime]$StartingDate,
          [Parameter( Mandatory = $true ) ]
            [int]$NumberOfDays
        )

  $days = @()

  for (($i = 0); ($i -lt $NumberOfDays); ($i++))
  {
    $currentDate = $StartingDate.AddDays($i)
    $abbrMonth = (Get-Culture).DateTimeFormat.GetAbbreviatedMonthName($currentDate.Month)
    $formattedDate = "$($currentDate.DayOfWeek) $abbrMonth $($currentDate.Day)"
    $days += $formattedDate
  }

  $retVal = $days | Out-String

  Set-Clipboard $retVal
  Write-Verbose $retVal
  Write-Verbose "Dates are now in clipboard"
  return $retVal

}
