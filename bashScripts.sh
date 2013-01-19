#This contains various tidbits small bash scripts.


#How to generate N length of string in bash
# Link : http://stackoverflow.com/questions/3211891/shell-script-create-string-of-repeated-characters
myvar=$(for i in {1..100};do printf "%s" "#";done;printf "\n")
