# Get current directory path
$MainFolderPath = Get-Location

# Create folders with subfolders (FreshFromTwitch, HumanReview, LaunchingPad)
$folderNames = "FreshFromTwitch", "HumanReview", "LaunchingPad"

foreach ($folder in $folderNames) {
  New-Item -ItemType Directory -Name $folder -Path $MainFolderPath
  
  # Create subfolders (Long, Short) within each main folder
  $subfolderNames = "Long", "Short"
  foreach ($subfolder in $subfolderNames) {
    New-Item -ItemType Directory -Name $subfolder -Path "$MainFolderPath\$folder"
  }
  
  # Create subfolders within Short folder (YouTubeShort, TikTokShort, InstagramShort, FacebookShort, XShorts)
  $shortSubfolderNames = "YouTubeShort", "TikTokShort", "InstagramShort", "FacebookShort", "XShorts"
  foreach ($shortSubfolder in $shortSubfolderNames) {
    New-Item -ItemType Directory -Name $shortSubfolder -Path "$MainFolderPath\$folder\Short"
  }
  
  # Create Raw folder only within FreshFromTwitch
  if ($folder -eq "FreshFromTwitch") {
    New-Item -ItemType Directory -Name "Raw" -Path "$MainFolderPath\$folder"
  }
}
