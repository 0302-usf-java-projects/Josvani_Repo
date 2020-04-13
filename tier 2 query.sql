select * from app_user where role_id = 3;

insert into app_user( username,password,first_name, last_name,role_id ) values ('SpellzAreCool', 'wand', 'Harry', 'Potter',4);

select * from app_user inner join study_set on (app_user.user_id = study_set.owner_id ) where app_user.user_id =4;


