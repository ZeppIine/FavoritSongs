# 권한 설정
grant all privileges on  *.* to 'root'@'%' identified by 'wpehrdjqanehqkQk';
delete from mysql.user where host="localhost" and user="root";
flush privileges;
select host,user,plugin,authentication_string from mysql.user;