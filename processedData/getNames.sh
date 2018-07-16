for niu in $(cat nius2.txt)
do
	echo -n "Testing $niu... "
	name=$(curl -L -s http://deic-projectes.uab.cat/gamification/perfil.php?niu=$niu | sed -n -E 's/\t*(.*), ([^\t]*)\t*<\/h2>/\2 \1/p')
	if [ -z "$name" ]
	then
		echo "Failure"
	else
		echo "Success!"
		echo $niu >> finalNius
		echo "| $niu | $name |" >> final
	fi
done
