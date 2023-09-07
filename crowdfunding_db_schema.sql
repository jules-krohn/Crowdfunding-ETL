create table categories(
category_id varchar(5) not null primary key,
category varchar(30) not null);

create table subcategories(
subcategory_id varchar(10) not null primary key,
subcategory varchar(30) not null);

create table contacts(
contact_id int not null primary key,
first_name char(15) not null,
last_name char(15) not null,
email varchar(50) not null
);

drop table campaign
create table campaign(
cf_id int not null,
contact_id int not null,
company_name varchar(250) not null,
description varchar(250) not null,
goal int not null,
pledged int not null,
outcome char(10) not null,
backers_count int not null,
country varchar(5)not null,
currency varchar(5) not null,
launch_date date not null,
end_date date not null,
category char(20) not null,
subcategory char(50) not null,
category_id varchar (5)  not null,
subcategory_id varchar(5) not null,
foreign key (category_id) references categories(category_id),
foreign key (contact_id) references contacts(contact_id),
foreign key (subcategory_id) references subcategories(subcategory_id));
