#------------------------------------------------------------------------------------------------
# Function..: Get-YyyyMmDdFormatted
# Author....: Robert C. Cain | @ArcaneCode | http://arcanecode.me
# Purpose...: Return a date in YYYYMMDD format
# Parameters:
#  DateToFormat - The DateTime variable to be formatted. It is returned in the format:
#                 YYYY-MM-DD
#
# Notes
#   This code is Copyright (c) 2023 Robert C. Cain. All rights reserved.
#
#   The code herein is for demonstration purposes. No warranty or guarantee
#   is implied or expressly granted.
#
#------------------------------------------------------------------------------------------------
function Get-YyyyMmDdFormatted ()
{
  [CmdletBinding()]
  param (
          [Parameter( Mandatory = $true ) ]
          [datetime]$DateToFormat
        )


  $y = $DateToFormat.Year.ToString()
  $m = $DateToFormat.Month.ToString().PadLeft(2,'0')
  $d = $DateToFormat.Day.ToString().PadLeft(2,'0')

  $yyyymmdd = "$y-$m-$d"
  Write-Verbose $yyyymmdd

  return $yyyymmdd

}
