listItems=("USA" "atom" "awesome-face")
PS3="Please select a templates: "
select itemSelected in ${listItems[@]}
do
    echo "$itemSelected selected"
    npx github:piuccio/cowsay "" -f $itemSelected

    npx react-native init name --template https://sittisuk:glpat-hVgdL59nWmpgv4NWTYND@gitlab.com/bigbanggroups/cariva/carivakit/webLibTemplate.git
    break
done