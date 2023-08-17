function Get-ByteOffsetOfLine {
    param (
        [string]$filePath,
        [int]$lineNumber
    )
    
    $stream = [System.IO.File]::OpenRead($filePath)
    $reader = [System.IO.StreamReader]::new($stream)
    
    $byteOffset = 0
    $currentLine = 1
    
    try {
        while (!$reader.EndOfStream) {
            $line = $reader.ReadLine()
            if ($currentLine -eq $lineNumber) {
                break
            }
            
            $byteOffset += [System.Text.Encoding]::UTF8.GetByteCount($line) + [System.Text.Encoding]::UTF8.GetByteCount("`r`n")
            $currentLine++
        }
    } finally {
        $reader.Close()
        $stream.Close()
    }
    
    return $byteOffset
}

# Prompt the user for input
$filePath = Read-Host "Enter the path to the file"
$lineNumber = Read-Host "Enter the line number"

# Convert the line number input to an integer
$lineNumber = [int]$lineNumber

$byteOffset = Get-ByteOffsetOfLine -filePath $filePath -lineNumber $lineNumber
Write-Host "Byte offset of line $lineNumber in file '$filePath': $byteOffset"
