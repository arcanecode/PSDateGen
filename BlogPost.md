# Fun With PowerShell - Organizing a Simple Project

## Introduction

One of my readers responded to a post asking for information on how to organize a PowerShell project. What a great idea for a post!

Let me say there are many opinions on how to organize your projects. I've been using PowerShell since version 2, and over the years have developed a method for organizing my PowerShell projects. I've adapted ideas from other PowerShell experts, as well as using my own methods.

## The Project - PSDateGen

In this post I'll talk about how I organize a simple project I'll call PSDateGen. This is a simple project that has functions to generate dates in two formats. This is useful for creating a journal. I use it to create a journal in OneNote to log my daily work activities. This is useful for sending my boss a weekly activity report.

It is also great for creating a yearly report. Most companies have annual reviews for their employees. Using your journal can help you highlight your contributions for the year, and help justify your existence, not to mention a request for a nice raise.

The first format is returned by the function `Get-WeekRange`, `YYYY-MM-DD to YYYY-MM-DD`. For example `2023-10-29 to 2023-11-04`. This makes a great header. I use it as the name of a page in my OneNote journal.

The second function, `Get-DayRange`, returns a day in `DayOfWeek Mon Day` format. It is the day of the week, the month as a three character abbreviation, then the day of the month in numeric format: `Sunday Oct 29`. I generate a range of 7 days, then paste them into my OneNote page for that week. I can then use each one as a header for that days work.

## See Also

You may find more helpful information at the links below.

[ArcaneBooks Project](https://arcanecode.com/2023/03/13/the-arcanebooks-project-an-introduction/)

[Fun With PowerShell - Advanced Functions](https://arcanecode.com/2021/09/06/fun-with-powershell-advanced-functions/)

[Fun With PowerShell - Strings](https://arcanecode.com/2021/07/12/fun-with-powershell-strings/)

[Fun With PowerShell - Write-Verbose](https://arcanecode.com/2021/09/27/fun-with-powershell-write-verbose/)

[OpenLibrary Simple API](https://arcanecode.com/2023/03/20/arcanebooks-isbn-overview-powershell-and-the-simple-openlibrary-isbn-api/)

## Conclusion

As you can see, `Start-Process` is extremely easy to use. Just pass in a URL or the name of a file, and PowerShell will attempt to open the item using the default application assigned in the operating system. In the ArcaneBooks project I'm using it to open a website, but you can use it for a variety of purposes.

If you like PowerShell, you might enjoy some of my Pluralsight courses. [PowerShell 7 Quick Start for Developers on Linux, macOS and Windows](https://pluralsight.pxf.io/jWzbre) is one of many PowerShell courses I have on Pluralsight. All of my courses are linked on my [About Me](https://arcanecode.com/info/) page.

If you don't have a Pluralsight subscription, just go to [my list of courses on Pluralsight](https://pluralsight.pxf.io/kjz6jn) . At the top is a Try For Free button you can use to get a free 10 day subscription to Pluralsight, with which you can watch my courses, or any other course on the site.

Blog Link:


