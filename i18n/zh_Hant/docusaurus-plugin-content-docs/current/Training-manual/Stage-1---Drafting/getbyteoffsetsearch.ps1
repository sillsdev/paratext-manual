function Get-ByteOffsetsOfText {
    param (
        [string]$filePath,
        [string]$searchText
    )
    
    $stream = [System.IO.File]::OpenRead($filePath)
    $reader = [System.IO.StreamReader]::new($stream)
    
    $byteOffsets = @()
    $currentOffset = 0
    
    try {
        while (!$reader.EndOfStream) {
            $line = $reader.ReadLine()
            $byteCount = [System.Text.Encoding]::UTF8.GetByteCount($line) + [System.Text.Encoding]::UTF8.GetByteCount("`r`n")
            
            if ($line -match $searchText) {
                $byteOffsets += $currentOffset
            }
            
            $currentOffset += $byteCount
        }
    } finally {
        $reader.Close()
        $stream.Close()
    }
    
    return $byteOffsets
}

# Prompt the user for input
$filePath = Read-Host "Enter the path to the file"
$searchText = Read-Host "Enter the text to search for"

$byteOffsets = Get-ByteOffsetsOfText -filePath $filePath -searchText $searchText

if ($byteOffsets.Count -gt 0) {
    Write-Host "Byte offsets of lines containing text '$searchText' in file '$filePath':"
    $byteOffsets | ForEach-Object { Write-Host $_ }
} else {
    Write-Host "Text '$searchText' not found in file '$filePath'"
}
