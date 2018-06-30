touch nius.txt
#for niu in {1000000..1999999}
for niu in {1458626..1999999}
do
	echo "Testing $niu..."
	nom=$(curl -s http://deic-projectes.uab.cat/gamification/perfil.php?niu=$niu | egrep "[A-z]* [A-z]*, [A-z]*.*</h2>" | sed -E "s/\t*([A-z]*) ([A-z]*), ([A-z]*).*/\3 \1 \2/g")
	if [ -z "$nom" ]
	then
		echo "Failure"
	else
		echo "Success!"
		echo $niu $nom >> nius.txt
	fi
	sleep 5
done
