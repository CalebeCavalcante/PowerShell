## Exemplos Comparadores

Windows PowerShell supports the following comparison operators.

-eq
  Description: Equal to. Includes an identical value.
  Example:


      C:\PS> "abc", "def" -eq "abc"
      abc


-ne
  Description: Not equal to. Includes a different value.
  Example:


      C:\PS> "abc", "def" -ne "abc"
      def


-gt
  Description: Greater-than.
  Example:


      C:\PS> 8 -gt 6
      True



-ge
  Description: Greater-than or equal to.
  Example:


      C:\PS> 8 -ge 8
      True


-lt
  Description: Less-than.
  Example:


      C:\PS> 8 -lt 6
      False


-le
  Description: Less-than or equal to.
  Example:


      C:\PS> 6 -le 8
      True


-like
  Description: Match using the wildcard character (*).
  Example:


      C:\PS> "Windows PowerShell" -like "*shell"
      True


-notlike
  Description: Does not match using the wildcard character (*).
  Example:


      C:\PS> "Windows PowerShell" -notlike "*shell"
      False


-match
  Description: Matches a string using regular expressions.
               When the input is scalar, it populates the
               $Matches automatic variable.
  Example:


      C:\PS> "Sunday" -match "sun"
      True

      C:\PS> $matches
      Name Value
      ---- -----
      0    sun


-notmatch
  Description: Does not match a string. Uses regular expressions.
               When the input is scalar, it populates the $Matches
               automatic variable.
  Example:


      C:\PS> "Sunday" -notmatch "sun"
      False

      C:\PS> $matches
      Name Value
      ---- -----
      0    sun


-contains
  Description: Containment operator. Includes an  identical value that is
  not part of a value. Always returns a Boolean value.
  Example:


      C:PS> "abc", "def" -contains "def"
      True


-notcontains
  Description: Containment operator. Does not include an identical value.
  Always returns Boolean.
  Example:


      C:PS> "Windows", "PowerShell" -notcontains "Shell"
      True


-replace
  Description: Replace operator. Changes the specified elements of a value.
  Example:


      C:\PS> "Get-Process" -replace "Get", "Stop"
      Stop-Process


-Or
    If -Or Conditional Operator

If (condition1 -Or condition2) {execute when true}

-And
    If -And Conditional Operator

If (condition1 -And condition2) {execute when true}
