FROM archlinux


ENV user=back

RUN pacman -Sy --noconfirm
RUN pacman -S python-flask openssh gcc python python-pip --noconfirm

RUN useradd -m $user
EXPOSE 5000

CMD ["/usr/sbin/sshd","-D"]




