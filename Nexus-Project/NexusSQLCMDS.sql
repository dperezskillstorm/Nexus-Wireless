INSERT INTO account(first_name,last_name,user_name,password,email_add ) VALUE("David","Perez","David99","1234","dperez@skillstorm");
INSERT INTO account(first_name,last_name,user_name,password,email_add ) VALUE("Regine","Donatien","Regine88","ABCD","Rdonatien@skillstorm");
INSERT INTO account(first_name,last_name,user_name,password,email_add ) VALUE("Paul","Lee","PaulLee77","23FD","plee@skillstorm");
select * from account;


#ADDING PHONE PLANS
INSERT INTO phone_plans(plan_name,device_limit,price_per_line,description) VALUE ("BASIC", 2, 30.00, "Talk and Text, 1GB Data");
INSERT INTO phone_plans(plan_name,device_limit,price_per_line,description) VALUE ("Gold", 3, 35.00, "Talk and Text, 10 Data");
INSERT INTO phone_plans(plan_name,device_limit,price_per_line,description) VALUE("Premium", 3,50.00,"Unlimited Talk, Text, Data, and Netflix");
select * from phone_plans;

INSERT INTO device_model(device_name,year,processor,description) VALUE ("HTC Desire 21 Pro", 2021, "SnapDragon 690 5G", "128GB storage, microSDX");
INSERT INTO device_model(device_name,year,processor,description) VALUE ("Apple iPhone13", 2021, "Apple A15 Bionic", "128GB/256GB/1TB storage, no card slot");
INSERT INTO device_model(device_name,year,processor,description) VALUE ("Google Pixel 5a", 2021, "SnapDragon 765G", "128GB storage, no card slot");
INSERT INTO device_model(device_name,year,processor,description) VALUE ("Galaxy S6", 2019, "SuperProcessor 5gz", "Sleek Profile, Dual Camera");
select * from device_model;

#Added userPlan
# USER ADDED his plan
select * from user_plan;
INSERT INTO user_plan(user_name_u,plan_name_u,num_of_lines) VALUE ("David99", "BASIC", 3);

##RETURNS idUSER_PLAN 1234567

#USER VIEWS AVAIlABLE DEVICSE
select * from device_model;
#USER SELECT APPLE iphone13 from list
select * from device_model WHERE device_name = "Apple iPhone13";

#USER ADD Phone to his plan and adds phone number to it
SELECT *
FROM user_plans p
INNER JOIN user_device d
ON p.

Select *
From account
INNER JOIN plans
ON account.user_name=plans.users
WHERE account.user_name="Regine88";

INSERT INTO user_device(device_name_d, phone_number_d,plan_name_d,user_device_first_name, user_device_last_name) VALUE("Apple iPhone13",9269082, 1234567,"Anthony","Perez");

select * from user_device;








Select * from plans Inner Join account ON username="David99";
Select * from plans ;
select * FROM plans FULL JOIN  account  ON username WHERE username="David99";

#FOR MANAGMENT DASHBOARD
#MATCHES TABLES ON ACCT and PLAN with USER NAME
Select *
From account
INNER JOIN plans
ON account.user_name=plans.users
WHERE account.user_name="Regine88";

#RETURNS USERS NAMES THAT HAVE PREMIUM ACCOUTNS
SELECT first_name, last_name, plans.plan_type
FROM account
INNER JOIN plans
ON account.user_name=plans.users
WHERE plans.plan_type = "Premium";

#Returns USERS THAT HAVE LESS THEN 2 PHONE LINES;
SELECT first_name, last_name, plans.plan_type,plans.device_limit
FROM account
INNER JOIN plans
ON account.user_name=plans.users
WHERE device_limit < 3;

Select * FROM device;
insert into device (device_name, plan_type, phone_number, user) values ("Motorola G Pure", 'Premium', 956222222,  'David99');
insert into device (device_name, plan_type, phone_number, user) values ("LG Stylo", 'Basic', 956222333,  'David99');
insert into device (device_name, plan_type, phone_number, user) values ("Galaxy S 7 ", 'Basic', 956222333,  'Paulee23');
insert into device (device_name, plan_type, phone_number, user) values ("Galaxy Note", 'Premium',956222334,  'ckerr2');




#RETURNS ALL PLANS ASSOCIATED TO USER
#USER LOGS IN - Sees There Plan
# RETURNS PLAN ID.
SELECT first_name, last_name, plans.plan_type, plans.plan_name,plans.description
FROM account
INNER JOIN plans
ON account.user_name=plans.users
WHERE account.user_name = "david99";




#USER WANTS TO ADD PLAN TO HIS ACCOUNT
insert into plans (price, plan_name, description, users,plan_type) values (50, 123456, 'ALL DATA', 'David99','Upgraded');

#USER WANTS TO ADD PHONES TO HIS PLAN
INSERT device (device_name,phone_number,plan_id,user) values ("Nokia BrickPhone",956234577,123456,"David99");
INSERT device (device_name,phone_number,plan_id,user) values ("Nokia BrickPhone",956234577,123456,"David99");
INSERT device (device_name,phone_number,plan_id,user) values ("LG big Phone",956234577,123456,"David99");



#USER Wants to remove plan from Account
DELETE FROM plans WHERE plans.plan_name = "123456";

#USER WANTS TO REMOVE PHONE FROM HIS PLAN
DELETE FROM device WHERE device.iddevice = "7";

SELECT * FROM user_plans;
DELETE


#Returns USERS DEVICES THAT BELONG TO USER
#USER clicks on view my devices
SELECT first_name, last_name, user_name , device.device_name, device.iddevice
FROM account
INNER JOIN device
ON account.user_name=device.user
WHERE account.user_name = "David99";

#RETURNS PLAN DETAILS AND ASSOCIATED DEVICSE by plan_id
# USER CLICK ON his plan
SELECT device.plan_id, device.device_name, device.phone_number
FROM plans
INNER JOIN device
ON  plans.plan_name = device.plan_id
WHERE plans.plan_name = "123456";




select * from device;
select * from plans;




select * from plans;
