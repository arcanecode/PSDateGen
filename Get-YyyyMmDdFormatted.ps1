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
