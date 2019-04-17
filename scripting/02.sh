USER=$1

if [ $USER_DEL == root ]
then
	echo "You can't delete root"
else
	killall -KILL -u $USER
	pkill -KILL -u $USER
	userdel -r $USER
	rm -rf /home/$USER
fi
