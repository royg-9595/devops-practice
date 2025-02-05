# display_message(){
#     echo "Echoed: $1"
# }

# echo "Enter msg : /n"
# read -r message

# display_message()


print_size(){
    echo "size of directory $directory : `du -h $directory`."
}

echo "Enter directory:"
read -r directory
print_size directory