$folderStructure = @{
  "github" = $null
  "ML" = $null
  "RL" = $null
  "DL" = $null
  "NN" = $null
  "programinglanguage" = @("python", "java script", "type script", "c", "c++", "A", "binary")
  "gradio" = $null
  "langchain" = $null
  "hugging face" = $null
  "jax" = $null
}

$folderStructure.Keys | ForEach-Object {
  $mainFolder = New-Item -ItemType Directory -Name $_ -Path $MainFolderPath -Force
  $subFolders = $folderStructure[$_]
  if ($subFolders) {
    $subFolders | ForEach-Object {
      New-Item -ItemType Directory -Name $_ -Path $mainFolder.FullName -Force
    }
  }
}
