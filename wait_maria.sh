echo s
mariadb -uroot -proot -h 10.5.0.3  -e ";"
ret=$?
while [[ $ret != 0  ]]
do

	mariadb -uroot -proot -h 10.5.0.3 -e ";"
	ret=$?
	sleep 1
done

mariadb -u root -proot -h 10.5.0.3 < agent_deploie/bdd_spotifree.sql
