
function TryPrint {
    param ($FileName)
Start-Process -FilePath $FileName -WindowStyle Maximized;
Set-Clipboard -Value $FileName    #set filename to clipboard
Sleep 10;
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.SendKeys]::SendWait("^p")    #ctrl p
Sleep 2;
[System.Windows.Forms.SendKeys]::SendWait("~")    #enter
Sleep 2;
[System.Windows.Forms.SendKeys]::SendWait("^v")    #ctrl v
[System.Windows.Forms.SendKeys]::SendWait("{BACKSPACE}")
[System.Windows.Forms.SendKeys]::SendWait("{BACKSPACE}")
[System.Windows.Forms.SendKeys]::SendWait("{BACKSPACE}")
[System.Windows.Forms.SendKeys]::SendWait("{BACKSPACE}")
Sleep 2;
[System.Windows.Forms.SendKeys]::SendWait("~")    #enter for the filename
Sleep 2;
[System.Windows.Forms.SendKeys]::SendWait("^w")    #close caxa
#Sleep 10;
#[System.Windows.Forms.SendKeys]::SendWait("%{F4}")    #close adobe acrobat
#Sleep 10;
}


$ParameterName=Get-Item *.exb,*.txt
echo $ParameterName

#foreach ($Parameter in $ParameterName) {
#    TryPrint $Parameter
#    }

