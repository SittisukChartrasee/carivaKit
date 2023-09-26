ResetColor='\033[0m'       # Text Reset
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
IYellow='\033[0;93m'      # Yellow

listItems=(
  "templateStuctureWeb"
  "templateLibraryWeb(available)"
  "templateStuctureMobile(available)"
  "templateLibraryMobile"
)

PS3="Please select a templates: "

select itemSelected in ${listItems[@]}
do
    if [[ ! "${listItems[@]}" =~ "$itemSelected" ]]; then
        echo "$Red error$ResetColor$IYellow is not a valid option. Please select a valid option.$ResetColor"
        break
    fi

    read -p "Project name: " projectName

    if [[ "$projectName" =~ [^a-zA-Z0-9] ]]; then
      echo "$Red error$ResetColor \"$projectName\"$IYellow is not a valid name for a project. Please use a valid identifier name (alphanumeric).$ResetColor"
      break
    fi

    npx github:piuccio/cowsay "" -f awesome-face
    echo " "
    echo "**************$Green $itemSelected item selected.$ResetColor **************"
    echo " "

    if [[ "${listItems[0]}" == "$itemSelected" ]]; then
      # todo : create a new project template stucture web
      echo "1"
    elif [[ "${listItems[1]}" == "$itemSelected" ]]; then
      echo "2"
      npx react-native init $projectName --template https://gitlab.com/cloud_arv/health-tech/building-blocks/templates/web-library-template.git
    elif [[ "${listItems[2]}" == "$itemSelected" ]]; then
      echo "3"
      # npx react-native init $projectName --template https://gitlab.com/cloud_arv/health-tech/building-blocks/templates/mobile-structure-template.git
    elif [[ "${listItems[3]}" == "$itemSelected" ]]; then
      echo "4"
      # todo : create a new project template library
    fi
    break
done