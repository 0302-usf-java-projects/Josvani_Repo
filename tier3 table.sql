create table user_role(
	role_id Serial primary key,
	name text
);

create table app_user(
	user_id serial primary key,
	username text unique,
	password text,
	frist_name text,
	last_name text,
	 role_id integer,  
	 foreign key (role_id) references user_role(role_id)
);

create table study_set(
	study_set_id serial primary key,
	name text unique,
	owner_id integer,
	foreign key (owner_id) references app_user(user_id)
);

create table category(
	category_id serial primary key,
	name  text unique 
);
create table flashcard(
	flashcard_id serial primary key,
	question text unique,
	answer text,
	category_id integer,
	foreign key (category_id) references category(category_id)
);

create table study_set_card(
	study_set_id integer,
	flashcard_id integer, 
	foreign key (study_set_id) references study_set(study_set_id),
	foreign key (flashcard_id) references flashcard(flashcard_id)
);

