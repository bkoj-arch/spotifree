
ret=$(mariadb -uroot -proot -h 10.5.0.3)
while [[ $ret != 0  ]]
do

	ret=$(mariadb -uroot -proot -h 10.5.0.3)
	sleep 1
done

mariadb -u root -proot -h 10.5.0.3 < agent_deploie/bdd_spotifree.sql
