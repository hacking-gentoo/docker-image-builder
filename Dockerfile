FROM scratch

ADD *.xz /

RUN mkdir -p /var/db/repos/gentoo

ADD portage /var/db/repos/gentoo/

RUN echo -e "\nsource /etc/portage/make.extra" >> /etc/portage/make.conf

COPY root /

CMD ["/bin/bash"]
