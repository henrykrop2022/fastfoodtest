--FOR DROP

-- drop table elef_user cascade constraints;
-- drop table elef_branch cascade constraints;
-- drop table elef_address cascade constraints;
-- drop table elef_category cascade constraints;
-- drop table elef_subcategory cascade constraints;
-- drop table elef_item cascade constraints;
-- drop table elef_order cascade constraints;
-- drop table elef_carryBox cascade constraints;
--commit;

insert into elef_carrybox values(1001,0 );
insert into elef_carrybox values(1002,0);
insert into elef_carrybox values(1003,0);
insert into elef_carrybox values(1004,0);
insert into elef_carrybox values(1005,0);
insert into elef_carrybox values(1006,0);
insert into elef_carrybox values(1007,0);

------------ Users
insert into elef_user(userid,emailid,name,password,security_question,security_answer,mobilenumber,role,carry_box_boxid)
        values(2001,"hermannchefouet@utrains.com","Hermann","Hermann_p@ss","Where Are you From ?", "Camerroon", "+237-999-999-9", "Admin",1003);

insert into elef_user(userid,emailid,name,password,security_question,security_answer,mobilenumber,role,carry_box_boxid)
        values(2002,"serge@utrains.test","Utrains","Serge_p@ss","Where Are you From ?","Togo", "+230-900-999-999", "Admin",1005);

insert into elef_user(userid,emailid,name,password,security_question,security_answer,mobilenumber,role,carry_box_boxid)
        values(2003,"suzie@utrains.test","Student","Suzie_p@ss","Where Are you From ?", "USA", "+1-999-999-999", "Customer",1006);

insert into elef_user(userid,emailid,name,password,security_question,security_answer,mobilenumber,role,carry_box_boxid)
        values(2004,"utrains@utrains.test","Utrains","Utrains_p@ss","Where Are you From ?", "Togo", "+230-999-999-999", "Admin",1001);

insert into elef_user(userid,emailid,name,password,security_question,security_answer,mobilenumber,role,carry_box_boxid)
        values(2005,"noel@utrains.com","Noel","Noel_p@ss","Where Are you From ?", "Camerroon", "+237-999-999-9", "Customer",1002);

insert into elef_user(userid,emailid,name,password,security_question,security_answer,mobilenumber,role,carry_box_boxid)
        values(2006,"alain@utrains.com","Alain","Alain_p@ss","Where Are you From ?", "Camerroon", "9999999999", "Customer",1004);

insert into elef_user(userid,emailid,name,password,security_question,security_answer,mobilenumber,role,carry_box_boxid)
        values(1007, "hermannchefouet@gmail.com","Hermanno","Hermanno@12","what is your favourite hobbie?","dancing","+2379988241561","Admin",1007);

--------Branch
insert into elef_branch(branchid,branchcity,branchregion,contactnumber,admin_userid)
       values(2001,"Dschang","EAST Cameroon","+237-999-999-9",2001);

insert into elef_branch(branchid,branchcity,branchregion,contactnumber,admin_userid)
        values(2004,"Hyderabad","Hitec-City","500235",1007);

insert into elef_branch(branchid,branchcity,branchregion,contactnumber,admin_userid)
       values(2002,"Bafoussam","EAST Cameroon","+237-999-999-9",2002);

insert into elef_branch(branchid,branchcity,branchregion,contactnumber,admin_userid)
       values(2003,"Yaounde","Center Cameroon","+237-999-999-9",2003);

insert into elef_branch(branchid,branchcity,branchregion,contactnumber,admin_userid)
       values(2005,"Douala","littoral Cameroon","+237-999-999-9",2004);

---- Address
insert into elef_address(addressid,city,line1,line2,landmark,name,mobilenumber,customer)
        values(3001,"Yaounde","Yde 3","4 bornes 09", "Cameroon","Afrik Market","+237-999-999-9",2001);

insert into elef_address(addressid,city,line1,line2,landmark,name,mobilenumber,customer)
        values(3002,"USA","Yde 3","4 bornes 09", "Cameroon","Afrik Market","+237-999-999-9",2002);

insert into elef_address(addressid,city,line1,line2,landmark,name,mobilenumber,customer)
        values(3003,"Togo","Yde 3","4 bornes Road", "Cameroon","Afrik Market","+237-999-999-9",2003);

insert into elef_address(addressid,city,line1,line2,landmark,name,mobilenumber,customer)
        values(3004,"Cote d'ivoir","Yde 3","4 bornes 09", "Cameroon","Afrik Market","+237-999-999-9",2004);

insert into elef_address(addressid,city,line1,line2,landmark,name,mobilenumber,customer)
        values(3005,"Yaounde","Yde 3","4 bornes 09", "Cameroon","Afrik Market","+237-999-999-9",2005);

insert into elef_address(addressid,city,line1,line2,landmark,name,mobilenumber,customer)
        values(3006,"Yaounde","Yde Road","D-No:2-16", "Cameroon","Swathi","+237-999-999-9",2006);

insert into elef_address(addressid,city,line1,line2,landmark,name,mobilenumber,customer)
        values(3007,"Hyderabad","Road","4 bornes 09", "Cameroon","Sotel","+237-999-999-9",2006);


------ categories for Dschang;

insert into elef_category(categoryid,categoryname,branch) values(7001,'Food',2001);
insert into elef_category(categoryid,categoryname,branch) values(7002,'Drinks',2001);
insert into elef_category(categoryid,categoryname,branch) values(7003,'Chill',2001);

insert into elef_category (categoryid,categoryname,branch) values(7008,"Food",2004);
insert into elef_category (categoryid,categoryname,branch) values(7009,"Drinks",2004);
insert into elef_category (categoryid,categoryname,branch) values(7010,"Chill",2004);



-- Catgeories for Bafoussam;
insert into  elef_category(categoryid,categoryname,branch) values(7004,'Food',2002);
insert into  elef_category(categoryid,categoryname,branch) values(7005,'Chill',2002);

--categories for Yaounde;
insert into elef_category(categoryid,categoryname,branch) values(7006,'Food',2003);
insert into elef_category(categoryid,categoryname,branch) values(7007,'Drinks',2003);


------ SUBCATEGORIES- Dschang;
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5001,'Biryanis',7001);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5002,'Starters',7001);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5003,'Kebabs',7001);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5004,'Curries',7001);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5005,'Indian Breads',7001);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5006,'Desserts',7003);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5007,'Beverages',7002);

 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5018,"Starters",7008);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5019,"Beverages",7009);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5020,"Beverages",7010);

-- SUBACATEGORIES ;
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5008,'Biryanis',7004);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5009,'Starters',7004);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5010,'Kebabs',7004);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5011,'Curries',7004);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5012,'Desserts',7005);

-- SUBCATEGORIES - BANGALORE;
 insert into elef_subcategory  (subcategoryid,subcategoryname,category) values(5013,'Biryanis',7006);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5014,'Starters',7006);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5015,'Curries',7006);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5016,'Indian Breads',7006);
 insert into elef_subcategory (subcategoryid,subcategoryname,category) values(5017,'Beverages',7007);
 --ITEMS -Dscahng;
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory)  values (2001,1,"","Chicken Biryani",210,"","","2001.jpg",1,"s","non-veg",2001,1001,5001);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2002,1,"","Mutton Biryani",253,"","","2002.jpg",1,"ns","non-veg",2001,1001,5001);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2003,1,"","Chicken Family Pack",552,"","","2003.jpg",1,"ns","non-veg",2001,1002,5001);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2004,0,"","Mutton Family Pack",576,"","","2004.jpg",1,"ns","non-veg",2001,1002,5001);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2005,1,"","Spl Chicken Biryani",335,"","","2005.jpg",1,"ns","non-veg",2001,1001,5001);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2006,1,"","Spl Mutton Biryani",351,"","","2006.jpg",1,"ns","non-veg",2001,1001,5001);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2007,1,"","Egg Biryani",154,"","","2007.jpg",1,"s","non-veg",2001,1001,5001);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2008,1,"","Veg-Biryani",154,"","","2008.jpg",1,"ns","veg",2001,1003,5001);


  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2009,1,"","Chilli Chicken",290,"","","2009.jpg",1,"ns","non-veg",2001,1003,5002);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2010,0,"","Chicken 65",249,"","","2010.jpg",1,"ns","non-veg",2001,1003,5002);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2011,1,"","Pepper Chicken",199,"","","2011.jpg",1,"ns","non-veg",2001,1004,5002);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2012,1,"","Paneer 65",150,"","","2012.jpg",1,"s","veg",2001,1004,5002);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2013,1,"","Veg Manchurian",819,"","","2013.jpg",1,"ns","veg",2001,1005,5002);

  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2014,1,"","Chicken Tikka Kebab",243,"","","2014.jpg",1,"ns","non-veg",2001,1006,5003);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2015,0,"","Tandoori (Half)",243,"","","2015.jpg",1,"ns","non-veg",2001,1005,5003);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2016,1,"","Tandoori (Full)",379,"","","2016.jpg",1,"ns","non-veg",2001,1007,5003);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2017,1,"","Chckn-Reshmi Kebab",243,"","","2017.jpg",1,"s","non-veg",2001,1007,5003);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2018,1,"","Chicken-garlic kebab",243,"","","2018.jpg",1,"ns","non-veg",2001,1007,5003);

  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2019,1,"","Butter Chicken",246,"","","2019.jpg",1,"ns","non-veg",2001,1003,5004);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2020,1,"","Nizami handi",171,"","","2020.jpg",1,"s","veg",2001,1006,5004);

  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2021,0,"","Tandoori Roti",264,"","","2021.jpg",1,"ns","veg",2001,1007,5005);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2022,1,"","Rumali Roti",196,"","","2022.jpg",1,"s","veg",2001,1007,5005);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2023,1,"","Roti",196,"","","2023.jpg",1,"s","veg",2001,1001,5005);


  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2024,0,"","Qubani Ka Meetha",107,"","","2024.jpg",1,"ns","veg",2001,1004,5006);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2025,1,"","Double Ka Meetha",73,"","","2025.jpg",1,"s","veg",2001,1002,5006);

  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2026,1,"","Diet Coke",150,"","","2026.jpg",1,"s","veg",2001,1005,5007);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2027,1,"","Thums Up",50,"","","2027.jpg",1,"ns","veg",2001,1005,5007);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2028,0,"","Mineral Water",45,"","","2028.jpg",1,"ns","veg",2001,1004,5007);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2029,1,"","Maaza",45,"","","2029.jpg",1,"ns","veg",2001,1004,5007);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2030,0,"","Sprite",45,"","","2030.jpg",1,"ns","veg",2001,1003,5007);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2031,1,"","Coke Tin",60,"","","2031.jpg",1,"ns","veg",2001,1003,5007);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2032,1,"","Fanta",45,"","","2032.jpg",1,"ns","veg",2001,1006,5007);


  --ITEMS - Bafousamm;
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2033,1,"","Chicken Biryani",210,"","","2033.jpg",1,"s","non-veg",2002,1007,5008);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2034,1,"","Mutton Biryani",253,"","","2034.jpg",1,"ns","non-veg",2002,1006,5008);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2035,1,"","Chicken Family Pack",552,"","","2035.jpg",1,"ns","non-veg",2002,1006,5008);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2036,1,"","Spm Chicken Biryani",784,"","","2036.jpg",1,"ns","non-veg",2002,1006,5008);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2037,0,"","Spm Mutton Biryani",819,"","","2037.jpg",1,"s","non-veg",2002,1007,5008);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2038,1,"","Veg-Family Pack",383,"","","2038.jpg",1,"ns","veg",2002,1006,5008);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2039,1,"","Veg-Spm Pack",574,"","","2039.jpg",1,"s","veg",2002,1007,5008);


  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2040,1,"","Pepper Chicken",199,"","","2040.jpg",1,"ns","non-veg",2002,1007,5009);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2041,1,"","Paneer 65",150,"","","2041.jpg",1,"s","veg",2002,1007,5009);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2042,1,"","Veg Manchurian",819,"","","2042.jpg",1,"ns","veg",2002,1001,5009);

  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2043,1,"","Chicken Tikka Kebab",243,"","","2043.jpg",1,"ns","non-veg",2002,1006,5010);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2044,0,"","Tandoori (Half)",243,"","","2044.jpg",1,"ns","non-veg",2002,1001,5010);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2045,1,"","Tandoori (Full)",379,"","","2045.jpg",1,"ns","non-veg",2002,1001,5010);


  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2046,1,"","Paneer Butter Masala",246,"","","2046.jpg",1,"ns","non-veg",2002,1001,5011);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2047,1,"","Green Peas Masala",171,"","","2047.jpg",1,"s","veg",2002,1002,5011);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2048,1,"","Butter Chicken",171,"","","2048.jpg",1,"s","veg",2002,1004,5011);


  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2049,1,"","Venilla",290,"","","2049.jpg",1,"ns","non-veg",2002,1007,5012);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2050,0,"","StrawBerry",249,"","","2050.jpg",1,"ns","non-veg",2002,1001,5012);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2051,0,"","Chocolate",249,"","","2051.jpg",1,"ns","non-veg",2002,1001,5012);



  --ITEMS_ Yaounde;

  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2052,1,"","Veg-Biryani Pack",574,"","","2052.jpg",1,"s","veg",2003,1001,5013);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2053,1,"","Veg-Spm Pack",574,"","","2053.jpg",1,"s","veg",2003,1001,5013);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2054,1,"","Chicken Biryani",210,"","","2054.jpg",1,"s","non-veg",2003,1007,5013);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2055,1,"","Mutton Biryani",253,"","","2055.jpg",1,"ns","non-veg",2003,1001,5013);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2056,1,"","Chicken Family Pack",552,"","","2056.jpg",1,"ns","non-veg",2003,1001,5013);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2057,0,"","Mutton Family Pack",576,"","","2057.jpg",1,"ns","non-veg",2003,1004,5013);

  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2058,0,"","Chicken 65",249,"","","2058.jpg",1,"ns","non-veg",2003,1003,5014);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2059,1,"","Pepper Chicken",199,"","","2059.jpg",1,"ns","non-veg",2003,1005,5014);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2060,1,"","Paneer 65",150,"","","2060.jpg",1,"s","veg",2003,1007,5014);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2061,1,"","Veg Manchurian",819,"","","2061.jpg",1,"ns","veg",2003,1006,5014);

  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2062,1,"","Nizami handi",171,"","","2062.jpg",1,"s","veg",2003,1007,5015);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2063,1,"","Paneer Tikka Masala",246,"","","2063.jpg",1,"ns","non-veg",2003,1001,5015);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2064,1,"","Green Peas Masala",171,"","","2064.jpg",1,"s","veg",2003,1001,5015);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2065,1,"","Butter Chicken",171,"","","2065.jpg",1,"s","veg",2003,1007,5015);


  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2066,0,"","Tandoori Roti",264,"","","2066.jpg",1,"ns","veg",2003,1001,5016);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2067,1,"","Rumali Roti",196,"","","2067.jpg",1,"s","veg",2003,1001,5016);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2068,0,"","Butter Naan",264,"","","2068.jpg",1,"ns","veg",2003,1001,5016);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2069,1,"","Roti",196,"","","2069.jpg",1,"s","veg",2003,1006,5016);

  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2070,1,"","Mozitto",150,"","","2070.jpg",1,"s","veg",2003,1001,5017);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2071,1,"","Thums Up",50,"","","2071.jpg",1,"ns","veg",2003,1007,5017);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2072,0,"","Limca",45,"","","2072.jpg",1,"ns","veg",2003,1007,5017);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2073,1,"","Maaza",45,"","","2073.jpg",1,"ns","veg",2003,1006,5017);
  insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2074,0,"","Sprite",45,"","","2074.jpg",1,"ns","veg",2003,1005,5017);
--- Last

insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2075,1,"","Venilla",290,"","","2075.jpg",1,"ns","non-veg",2004,1006,5019);
insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2076,1,"","StrawBerry",249,"","","2076.jpg",1,"ns","non-veg",2004,1007,5019);
insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2077,1,"","Chocolate",249,"","","2077.jpg",1,"ns","non-veg",2004,1007,5019);
insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2078,0,"","Qubani Ka Meetha",107,"","","2078.jpg",1,"ns","veg",2004,1007,5019);
insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2079,1,"","Double Ka Meetha",73,"","","2079.jpg",1,"s","veg",2004,1003,5019);


insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2080,1,"","Diet Coke",150,"","","2080.jpg",1,"s","veg",2004,1004,5020);
insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2081,1,"","Thums Up",50,"","","2081.jpg",1,"ns","veg",2004,1003,5020);
insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2082,1,"","Mineral Water",45,"","","2082.jpg",1,"ns","veg",2004,1004,5020);
insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2083,1,"","Maaza",45,"","","2083.jpg",1,"ns","veg",2004,1005,5020);
insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2084,1,"","Sprite",45,"","","2084.jpg",1,"ns","veg",2004,1006,5020);
insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2085,1,"","Coke Tin",60,"","","2085.jpg",1,"ns","veg",2004,1007,5020);
insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2086,0,"","Fanta",45,"","","2086.jpg",1,"ns","veg",2004,1007,5020);

insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2087,1,"","Paneer 65",150,"","","2087.jpg",1,"s","veg",2004,1001,5018);
insert into elef_item(itemid,active,itemdescription,itemname,itemprice,picbyte,pic_type,picture,quantity,speciality,type,branch,carry_box,subcategory) values (2088,1,"","Veg Manchurian",819,"","","2088.jpg",1,"ns","veg",2004,1001,5018);


commit;