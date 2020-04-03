$ZippedFilePath = "C:\Talend_CRM\AMP\new\Context_Sample_0.1.zip"
$DestinationFolder = "C:\Talend_CRM\AMP\new\"
[void] (New-Item -Path $DestinationFolder -ItemType Directory -Force)
$Shell = new-object -com Shell.Application
$Shell.Namespace($DestinationFolder).copyhere($Shell.NameSpace($ZippedFilePath).Items(),4) 