for niu in $(cat nius2.txt)
do
	echo -n "Testing $niu... "
	if [ -z "$(curl -L -s http://deic-projectes.uab.cat/gamification/perfil.php?niu=$niu | tr -d '\n' | grep '<div class=\"col-md-5 column\">.*<h2>')" ]
	then
		echo "Failure"
	else
		echo "Success!"
		echo $niu >> names.txt
	fi
done
