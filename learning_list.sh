#!/bin/bash

MainFolderPath="."
declare -A folderStructure

folderStructure=(
  ["github"]=""
  ["ML"]=""
  ["RL"]=""
  ["DL"]=""
  ["NN"]=""
  ["gradio"]=""
  ["langchain"]=""
  ["hugging face"]=""
  ["jax"]=""
)

programmingLanguages=("python" "java script" "type script" "c" "c++" "A" "binary")

for key in "${!folderStructure[@]}"; do
  mkdir -p "$MainFolderPath/$key"
done

for language in "${programmingLanguages[@]}"; do
  mkdir -p "$MainFolderPath/programinglanguage/$language"
done
