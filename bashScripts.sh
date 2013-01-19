#This contains various tidbits small bash scripts.

----------------------------------------------------------------

# How to generate N length of string in bash
# Link : http://stackoverflow.com/questions/3211891/shell-script-create-string-of-repeated-characters
myvar=$(for i in {1..100};do printf "%s" "#";done;printf "\n")

----------------------------------------------------------------

# How to exit if a command failed?
# http://stackoverflow.com/questions/3822621/how-to-exit-if-a-command-failed

my_command || { echo 'my_command failed' ; exit 1; }

----------------------------------------------------------------

# How to get quiter SSH Login?
# http://www.debian-administration.org/articles/546
#Just do this and you set.
$ touch ~/.hushlogin


----------------------------------------------------------------


# sed : delete n lines following a pattern
# http://stackoverflow.com/questions/4396974/sed-delete-n-lines-following-a-pattern

# To delete 5 lines after a pattern (including the line with the pattern):
sed -e '/pattern/,+5d' file.txt

# To delete 5 lines after a pattern (excluding the line with the pattern):
sed -e '/pattern/{n;N;N;N;N;d}' file.txt

----------------------------------------------------------------

# Move all files except one
# http://stackoverflow.com/questions/670460/move-all-files-except-one
find ~/Linux/Old -maxdepth 1 -mindepth 1 -not -name Tux.png -print0 | xargs -0 mv -t ~/Linux/New


----------------------------------------------------------------

# How To Use rsync For Transferring Files Under Linux or UNIX
# http://www.cyberciti.biz/tips/linux-use-rsync-transfer-mirror-files-directories.html

# be careful of that --delete option it will delete everything on the local directory if not found remotely, i.e. it will sync it as per the remote

#Task: Synchronize a remote directory with a local directory
$ rsync -r -a -v -e "ssh -l pi" --delete 192.168.2.10:/media/hd1/Everything/linux-downloads/Torrents/Completed/Pi/ .

#Task: Synchronize a local directory with a remote directory
$ rsync -r -a -v -e "ssh -l jerry" --delete /local/webroot openbsd.nixcraft.in:/webroot


----------------------------------------------------------------

# How to change bash prompt
# http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
$ echo $PS1
PS1="touch me : "


----------------------------------------------------------------
# Lesser known commands
http://www.quora.com/What-are-some-lesser-known-but-useful-Unix-commands

----------------------------------------------------------------
