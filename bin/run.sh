MyVideos=("USA" "atom" "awesome-face")
PS3="Please select a video card: "
select myvideo in ${MyVideos[@]}
do
    echo "$myvideo selected"
    npx github:piuccio/cowsay cowthink -f $myvideo
    break
done