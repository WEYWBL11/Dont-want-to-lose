#!/bin/bash

# Define main folder path
MainFolderPath="/home/username/test"

echo "Main folder path: $MainFolderPath"

# Create folders with subfolders (FreshFromTwitch, HumanReview, LaunchingPad)
folderNames=("FreshFromTwitch" "HumanReview" "LaunchingPad")

for folder in "${folderNames[@]}"; do
  mkdir -p "$MainFolderPath/$folder"
  
  # Create subfolders (Long, Short) within each main folder
  subfolderNames=("Long" "Short")
  for subfolder in "${subfolderNames[@]}"; do
    mkdir -p "$MainFolderPath/$folder/$subfolder"
  done
  
  # Create subfolders within Short folder (YouTubeShort, TikTokShort, InstagramShort)
  shortSubfolderNames=("YouTubeShort" "TikTokShort" "InstagramShort")
  for shortSubfolder in "${shortSubfolderNames[@]}"; do
    mkdir -p "$MainFolderPath/$folder/Short/$shortSubfolder"
  done
  
  # Create Raw folder only within FreshFromTwitch
  if [ "$folder" == "FreshFromTwitch" ]; then
    mkdir -p "$MainFolderPath/$folder/Raw"
  fi
done
