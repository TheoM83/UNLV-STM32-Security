$word = New-Object -ComObject word.application 
$files = Get-ChildItem -Path ".\Word"
$curDir = pwd

foreach ($f in $files) {
        $doc = $word.documents.open($f.fullname) 
		$name = [System.IO.Path]::GetFileNameWithoutExtension($f)
		$path = "${curDir}\PDF\${name}.pdf"
        $doc.saveas($path,17)
        $doc.close() 
    }
	
echo "The documents have been converted"