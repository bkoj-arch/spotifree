FROM archlinux


ENV user=jenkins

RUN pacman -Sy --noconfirm
RUN pacman -S openssh mariadb gcc python python-pip --noconfirm
RUN pip install mariadb

RUN useradd -m $user
RUN mkdir /home/jenkins/.ssh && chown jenkins: -R /home/jenkins


RUN ssh-keygen -A

COPY jenkins_rsa.pub /home/jenkins/.ssh/authorized_keys
COPY corescript.py bdd_spotifree.sql bdd.py /home/jenkins/
EXPOSE 2223

CMD ["/usr/sbin/sshd","-D"]




