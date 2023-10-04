#!/usr/bin/env bash
ResetColor=$(echo -e '\033[0m')       # endColor
Red=$(echo -e '\033[31m')             # Red
Green=$(echo -e '\033[1;32m')         # Green
IYellow=$(echo -e '\033[1;33m')       # Yellow

listItems=(
  "templateStuctureWeb"
  "templateLibraryWeb(available)"
  "templateStuctureMobile(available)"
  "templateLibraryMobile"
)

PS3="Please choose a templates: "