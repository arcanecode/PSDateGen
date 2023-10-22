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
