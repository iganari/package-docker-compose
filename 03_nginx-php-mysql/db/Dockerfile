FROM mysql:5.7.22

MAINTAINER iganari

# setting timezone
RUN rm -rfv /etc/localtime &&\
    ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

EXPOSE 3306

# ADD MySQL setting
# ADD ./etc/mysql/conf.d/my.cnf /etc/mysql/conf.d/my.cnf

CMD ["mysqld"]
