while getopts :a:b: flag;do
    case $flag in
        a) ab=$OPTARG;;
        b) bc=$OPTARG;;
        ?) echo "I don't understand this value"
        esac
done
    echo " first $ab, second $bc "