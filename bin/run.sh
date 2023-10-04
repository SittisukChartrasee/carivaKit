ResetColor=$(echo '\033[0m')       # endColor
Red=$(echo '\033[31m')             # Red
Green=$(echo '\033[1;32m')         # Green
IYellow=$(echo '\033[1;33m')       # Yellow

listItems=(
  "templateStuctureWeb"
  "templateLibraryWeb(available)"
  "templateStuctureMobile(available)"
  "templateLibraryMobile"
)

logo="
    
    . * .     * *   
    * * *   * * * *
    . * .   * * * *             * * * *          * *        * * * * *    * *  * *         * *    * *
            * * * *           * . * * * *       * . *       * * * * . *  * *   * *       * *    * . *
      * * * * . . . . .      * *       *       * * * *      * *     * *  * *    * *     * *    * * * * 
    * * * * . * * * . . .    * *              * *   * *     * ****** *   * *     * *   * *    * *   * *
    * * * * . * * * . . .    * *       *     * *     * *    * *** * *    * *      * * * *    * *     * *
      * * * . * * * . .       * . * * * *   * *       * *   * *   * *    * *       * . *    * *       * *
            . . . .             * * * *    * *         * *  * *     * *  * *        * *    * *         * *
            . . . .
              . . 

                                       ...$Green Welcome to CARIVA Template$ResetColor ...
"

echo "$logo"
PS3="Please choose a templates: "

select itemSelected in ${listItems[@]}
do
    # Validate item selected
    if [[ ! "${listItems[@]}" =~ "$itemSelected" ]]; then
        echo "$Red error$ResetColor$IYellow is not a valid option. Please select a valid option.$ResetColor"
        break
    fi

    # Input project name
    read -p "Project name: " projectName

    # Validate project name
    if [[ "$projectName" =~ [^a-zA-Z0-9] ]]; then
      echo "$Red error$ResetColor \"$projectName\"$IYellow is not a valid name for a project. Please use a valid identifier name (alphanumeric).$ResetColor"
      break
    fi
    
    # Display selected item
    echo " "
    echo "$Green ✔$ResetColor Selected $itemSelected"
    echo " "

    # - - - - - - - - - - - - - - - #
    # Call to create a new project  #
    # - - - - - - - - - - - - - - - #

    if [[ "${listItems[0]}" == "$itemSelected" ]]; then
      npx github:piuccio/cowsay "" -f dragon
      # todo : create a new project template stucture web
    elif [[ "${listItems[1]}" == "$itemSelected" ]]; then
      npx react-native init $projectName --template https://gitlab.com/cloud_arv/health-tech/building-blocks/templates/web-library-template.git
    elif [[ "${listItems[2]}" == "$itemSelected" ]]; then
      npx react-native init $projectName --template https://gitlab.com/cloud_arv/health-tech/building-blocks/templates/mobile-structure-template.git
    elif [[ "${listItems[3]}" == "$itemSelected" ]]; then
      npx github:piuccio/cowsay "" -f ghost
      # todo : create a new project template library
    fi
    break
done