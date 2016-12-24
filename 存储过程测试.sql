select * from mysql.proc where db = 'product' and `type` = 'PROCEDURE'

show procedure status;

mysql> show create table user;

desc user; //显示表结构

drop procedure testData;

show create procedure testdata;

mysql > SET @i=10;  
mysql > CALL charu(@i); 

drop table user ;
create table `user` (
    id SMALLINT ,
    `c_date` DATETIME,
   `Password` varchar (22)
); 

delimiter //
CREATE PROCEDURE testData(in con int)
     begin
         declare ii int default 0;
         while ii<con
         do
     insert into user values (2+ii,CURRENT_TIMESTAMP,'1'+'2');
     set ii=ii+1;
     end while;
     end ;
     //
delimiter ;


##添加用户测试数据
##
delimiter //
CREATE PROCEDURE userTestData(in con int)
     begin
         declare i int default 0;
         while i<con
         do
INSERT INTO `product`.`duty` (`u_id`, `u_name`, `password`, `isactive`, `photo`, `email`, `mobile`, `remark`, `login_ip`, `login_date`, `expire_date`, `create_date`, `last_update`) VALUES ('2'+i, concat('姓名',i), concat('密码',i),1, concat('头像',i), concat('邮箱',i), concat('手机',i), concat('备注',i),concat('ip地址',i), '1967:1:1 9:9:9', CURRENT_TIMESTAMP, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 1 DAY), DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 1 DAY));
     set i=i+1;
     end while;
     end ;
     //
delimiter ;

##添加角色测试数据
##
delimiter //
CREATE PROCEDURE roleTestData(in con int)
     begin
         declare i int default 0;
         while i<con
         do
INSERT INTO `product`.`role` (`r_id`, `r_name`, `isactive`, `data_scope`, `r_type`, `remarks`,`create_user`,`create_date`,`update_user`, `update_date`) VALUES ('1'+i, concat('角色',i), 1, 1+i, concat('类型',i), concat('备注',i), 1+i, '1967:1:1 9:9:9', 1+i, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 1 DAY));
     set i=i+1;
     end while;
     end ;
     //
delimiter ;


##添加权限测试数据
##
delimiter //
CREATE PROCEDURE menuTestData(in con int)
     begin
         declare i int default 0;
         while i<con
         do
INSERT INTO `product`.`menu` (`menu_id`, `name`, `isactive`, `sort`, `href`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`, `remarks`) VALUES ('1'+i, concat('姓名',i), '1', '1000'+i, concat('sys:role:veiw',i), concat('person',i), '1', concat('sys:role:edit',i), concat('超级管理员',i), DATE_ADD(CURRENT_TIMESTAMP, INTERVAL i DAY), concat('超级管理员',i), DATE_ADD(CURRENT_TIMESTAMP, INTERVAL i DAY), concat('备注',i));

     set i=i+1;
     end while;
     end ;
     //
delimiter ;

##查询所有权限
##
SELECT distinct u.u_name,m.name, m.permission FROM duty u, menu m, role r, role_menu rm, user_role ur where u.u_id=1 and u.u_id=ur.user_id and ur.role_id=r.r_id and r.r_id=rm.role_id and rm.menu_id=m.menu_id;


delimiter //
create PROCEDURE userTestData(in numb int)
begin
 declare i int default 0;
 while i<numb
 do
	INSERT INTO `product`.`user` (`u_id`, `u_name`, `password`, `photo`, `email`, `mobile`, `remark`, `login_ip`, `isactive`, `login_date`, `u_type`, `create_date`, `last_update`) VALUES ('1'+i, concat('姓名',i), concat('密码',i), concat('头像',i), concat('邮箱',i), concat('手机',i), concat('备注',i),concat('ip地址',i), 1+i, '1967:1:1 9:9:9', '2'+i, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 1 DAY), DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 1 DAY));
	set i=i+1;
	end while;
	end ;
	//
delimiter;

INSERT INTO user(id,c_date,password) VALUES(2,DATE_ADD(curdate(), INTERVAL 1 DAY),'3'+3) ;
INSERT INTO user(id,c_date,password) VALUES(2,DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 1 DAY),'3'+3) ;
INSERT INTO user(id,password) VALUES(3,concat('rr',5)) ;


INSERT INTO `product`.`user` (`u_id`, `u_name`, `password`, `photo`, `email`, `mobile`, `remark`, `login_ip`, `isactive`, `login_date`, `u_type`, `create_date`, `last_update`) VALUES ('1'+i, concat('姓名',i), concat('密码',i), concat('头像',i), concat('邮箱',i), concat('手机',i), concat('备注',i),concat('ip地址',i), 1+i, '1967:1:1 9:9:9', '2'+i, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 1 DAY), DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 1 DAY));

