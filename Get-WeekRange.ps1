#------------------------------------------------------------------------------------------------
# Function..: Get-WeekRange
# Author....: Robert C. Cain | @ArcaneCode | http://arcanecode.me
# Purpose...: Return text in the format:
#               YYYY-MM-DD to YYYY-MM-DD
#
# Parameters:
#   StartingDate - The date to begin generating from
#   NumberOfWeeks - The number of weeks to generate
#
# Notes
#   When the dates are generated the end results are placed into the clipboard.
#
#   This code is Copyright (c) 2023 Robert C. Cain. All rights reserved.
#
#   The code herein is for demonstration purposes. No warranty or guarantee
#   is implied or expressly granted.
#
#------------------------------------------------------------------------------------------------
function Get-WeekRange ()
{
  [CmdletBinding()]
  param (
          [Parameter( Mandatory = $true ) ]
            [datetime]$StartingDate,
          [Parameter( Mandatory = $true ) ]
            [int]$NumberOfWeeks
        )

  # Hold the output
  $weeks = @()

  for (($i = 0); ($i -lt $NumberOFWeeks); ($i++))
  {
      $currentDate = $StartingDate.AddDays(($i * 7))
      $startOFWeek = Get-YyyyMmDdFormatted -DateToFormat $currentDate
      $endOFWeek = Get-YyyyMmDdFormatted -DateToFormat $currentDate.AddDays(6)

      $dateRange = "$startOfWeek to $endOfWeek"
      $weeks += $dateRange
  }

  $retVal = $weeks | Out-String

  Set-Clipboard $retVal
  Write-Verbose $retVal
  Write-Verbose "Week Range is now in the clipboard"

  return $retVal

}
