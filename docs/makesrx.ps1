function Generate-SRXFiles {
  param(
    [string]$MarkdownDirectory
  )

  $Files = Get-ChildItem -Path $MarkdownDirectory -Filter "*.md"

  foreach ($File in $Files) {
    $Lines = Get-Content -Path $File -Raw
    $HTMLLines = Select-String -Path $File -Pattern "<" -AllMatches
    $ByteOffsets = @{}
    for ($i = 0; $i -lt $HTMLLines.Count; $i++) {
      $ByteOffsets[$i] = $HTMLLines[$i].Index
    }

    $SRXFile = "$File\-.srx"
    $SRXContent = "<segmentation_rules>
      <file_name>$File</file_name>
      <segments>"
    for ($i = 0; $i -lt $HTMLLines.Count; $i++) {
      $SRXContent += "
        <segment>
          <start>${ByteOffsets[$i]}</start>
          <end>${ByteOffsets[$i] + $HTMLLines[$i].Length}</end>
          <type>html</type>
        </segment>"
    }
    $SRXContent += "
      </segments>
    </segmentation_rules>"

    Write-Host "Generating SRX file for $File"
    $SRXFile | Out-File -Encoding UTF8 -Append $SRXContent
  }
}


Generate-SRXFiles -MarkdownDirectory "Training-manual"