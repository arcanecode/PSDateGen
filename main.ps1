<#-------------------------------------------------------------------------------------------------
  File.....: main.ps1
  Purpose..: This file can be used as a test harnes. It can also be used to call the functions
             in order to generate date ranges.

  Author...: Robert C. Cain | @ArcaneCode | arcane@arcanetc.com
             http://arcanecode.com

  Notes....: This code is Copyright (c) 2023 Robert C. Cain. All rights reserved.

  The code herein is for demonstration purposes. No warranty or guarantee
  is implied or expressly granted.

  This module may not be reproduced in whole or in part without the express
  written consent of the author.
-----------------------------------------------------------------------------------------------#>

# Run code with the functions
. .\Get-DayRange.ps1
. .\Get-YyyyMmDdFormatted.ps1
. .\Get-WeekRange.ps1

# Generate weeks of data in the format:
# YYYY-MM-DD to YYYY-MM-DD
Get-WeekRange -StartingDate '2023-10-29' -NumberOFWeeks 2

# Generate daily date entires in the format:
# Weekday Mon Day
Get-DayRange -StartingDate '2023-10-29' -NumberOfDays 7
