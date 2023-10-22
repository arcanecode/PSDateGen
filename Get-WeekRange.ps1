function Get-WeekRange ()
{
  [CmdletBinding()]
  param (
          [Parameter( Mandatory = $true ) ]
            [datetime]$StartingDate,
          [Parameter( Mandatory = $true ) ]
            [int]$NumberOFWeeks
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
