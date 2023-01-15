package com.fastfood.fastfood;

import com.fastfood.fastfood.entities.*;
import com.fastfood.fastfood.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@SpringBootApplication
//@EnableEncryptableProperties
public class FastfoodApplication implements CommandLineRunner {

	@Autowired
	CarryBoxRepository carryBoxRepository;

	@Autowired
	UserRepository userRepository;

	@Autowired
	BranchRepository branchRepository;

	@Autowired
	AddressRepository addressRepository;

	@Autowired
	CategoryRepository categoryRepository;

	@Autowired
	SubCategoryRepository subCategoryRepository;

	@Autowired
	OrderRepository orderRepository;

	@Autowired
	ItemRepository itemRepository;

	public static void main(String[] args) {
		SpringApplication.run(FastfoodApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// Inserting the data in the mysql table.
		//User first = new User(1, "Aayush");
		// ob.save() method
		//ob.save(first);



		/**
		 * carryBoxes initialization
		 */

//		try {
//			List<CarryBox>carryBoxes = new ArrayList<>();
//			System.out.println("\n\n\n================> boxId :");
//			//System.out.println("\n\n\n================> boxId : "+carryBoxRepository.findAll().size());
//			CarryBox carryBox1 = carryBoxRepository.save(new CarryBox(1001, 20.0, null,null));
//			CarryBox carryBox2 = carryBoxRepository.save(new CarryBox(1002, 30.0, null,null));
//			CarryBox carryBox3 = carryBoxRepository.save(new CarryBox(1003, 40.0, null,null));
//			CarryBox carryBox4 = carryBoxRepository.save(new CarryBox(1004, 50.0, null,null));
//			CarryBox carryBox5 = carryBoxRepository.save(new CarryBox(1005, 60.0, null,null));
//			CarryBox carryBoxn = carryBoxRepository.save(new CarryBox(2001, 20.0, null,null));
//
//			//------------------------------------------------------------------------------------------------------------------
//			/**
//			 * User initialization
//			 */
//			List<User>users = new ArrayList<>();
//			//System.out.println("\n\n\n================> USER"+userRepository.findByUserId(201).toString());
//			User user1 = userRepository.save(new User(2001,"hermannchefouet@gmail.com","Hermann","Hermann_p@ss",
//					"Where Are you From ?", "Camerroon", "+237-999-999-9", "Admin",null,carryBox1,null,null));
//
//			User user2 = userRepository.save(new User(2002,"utrains@utrains.test","Utrains","Utrains_p@ss",
//					"Where Are you From ?", "Togo", "+230-999-999-999", "Admin",null,carryBox2,null,null));
//
//			User user3 = userRepository.save(new User(2003,"student@utrains.test","Student","Student_p@ss",
//					"Where Are you From ?", "USA", "+1-999-999-999", "Admin",null,carryBox3,null,null));
//
//			User user4 = userRepository.save(new User(2004,"alain@utrains.com","Alain","Alain_p@ss",
//					"Where Are you From ?", "Camerroon", "9999999999", "Customer",null,carryBox4,null,null));
//
//			User user5 = userRepository.save(new User(2005,"noel@utrains.com","Noel","Noel_p@ss",
//					"Where Are you From ?", "Camerroon", "+237-999-999-9", "Customer",null,carryBox5,null,null));
//
//			//------------------------------------------------------------------------------------------------------------------
//
//			/**
//			 * Branch initialization
//			 */
//			Branch branch1 = branchRepository.save(new Branch(20001,"EAST","Dschang","+237-999-999-9",user1,null,null,null));
//
//			Branch branch2 = branchRepository.save(new Branch(3002,"EAST","Dschang","+237-999-999-9",user2,null,null,null));
//
//			Branch branch3 = branchRepository.save(new Branch(3003,"EAST","Dschang","+237-999-999-9",user3,null,null,null));
//
//			Branch branch4 = branchRepository.save(new Branch(3004,"EAST","Dschang","+237-999-999-9",user4,null,null,null));
//
//			Branch branch5 = branchRepository.save(new Branch(3005,"EAST","Dschang","+237-999-999-9",user5,null,null,null));
//
//			//------------------------------------------------------------------------------------------------------------------
//
//			/**
//			 * Address initialization
//			 */
//			Address address1 = addressRepository.save(new Address(4001,"Yaounde","Yde 3","4 bornes 09", "Cameroon","Afrik Market",
//					"+237-999-999-9",user1, null));
//
//			Address address2 = addressRepository.save(new Address(4002,"USA","Yde 3","4 bornes 09", "Cameroon","Afrik Market",
//					"+237-999-999-9",user2, null));
//
//			Address address3 = addressRepository.save(new Address(4003,"Togo","Yde 3","4 bornes 09", "Cameroon","Afrik Market",
//					"+237-999-999-9",user3, null));
//
//			Address address4 = addressRepository.save(new Address(4004,"Cote d'ivoir","Yde 3","4 bornes 09", "Cameroon","Afrik Market",
//					"+237-999-999-9",user4, null));
//
//			Address address5 = addressRepository.save(new Address(4005,"Yaounde","Yde 3","4 bornes 09", "Cameroon","Afrik Market",
//					"+237-999-999-9",user5, null));
//
//			//------------------------------------------------------------------------------------------------------------------
//
//
//			/**
//			 * Category initialization
//			 */
//			Category categoryn = categoryRepository.save(new Category(2001,"Food",null,branch1));
//
//			Category category1 = categoryRepository.save(new Category(5001,"Food",null,branch1));
//
//			Category category2 = categoryRepository.save(new Category(5002,"Alcohol",null,branch1));
//
//			Category category3 = categoryRepository.save(new Category(5003,"spice",null,branch1));
//
//			Category category4 = categoryRepository.save(new Category(5004,"meat",null,branch1));
//
//			Category category5 = categoryRepository.save(new Category(5005,"Milk",null,branch1));
//			//------------------------------------------------------------------------------------------------------------------
//
//			/**
//			 * SubCategory initialization
//			 */
//			SubCategory subCategoryn = subCategoryRepository.save(new SubCategory(2001,"Cooking",null,categoryn));
//
//			SubCategory subCategory1 = subCategoryRepository.save(new SubCategory(6001,"Cooking",null,category1));
//			SubCategory subCategory2 = subCategoryRepository.save(new SubCategory(6002,"Rejected",null,category1));
//			SubCategory subCategory3 = subCategoryRepository.save(new SubCategory(6003,"Delivered",null,category2));
//			SubCategory subCategory4 = subCategoryRepository.save(new SubCategory(6004,"Biryanis",null,category2));
//			SubCategory subCategory5 = subCategoryRepository.save(new SubCategory(6005,"Kebabs",null,category3));
//
//			SubCategory subCategory6 = subCategoryRepository.save(new SubCategory(6006,"Kebabs",null,category3));
//			SubCategory subCategory7 = subCategoryRepository.save(new SubCategory(6007,"Kebabs",null,category4));
//			SubCategory subCategory8 = subCategoryRepository.save(new SubCategory(6008,"Kebabs",null,category4));
//			SubCategory subCategory9 = subCategoryRepository.save(new SubCategory(6009,"Kebabs",null,category5));
//			SubCategory subCategory10 = subCategoryRepository.save(new SubCategory(6010,"Kebabs",null,category5));
//
//
//			/**
//			 * Order initialization
//			 */
//			Order order1 = orderRepository.save(new Order(7001,801,50,LocalDate.now(), LocalTime.now(),400,"SEND",
//					"Send To Customer",address1,branch1,user1,null));
//			Order order2 = orderRepository.save(new Order(7002,802,60,LocalDate.now(), LocalTime.now(),405,"Recept",
//					"Send To Customer",address1,branch1,user1,null));
//			Order order3 = orderRepository.save(new Order(7003,803,70,LocalDate.now(), LocalTime.now(),410,"Rejected",
//					"Send To Customer",address1,branch1,user1,null));
//			Order order4 = orderRepository.save(new Order(7004,804,80,LocalDate.now(), LocalTime.now(),415,"Delivered",
//					"Send To Customer",address1,branch1,user1,null));
//			Order order5 = orderRepository.save(new Order(7005,805,90,LocalDate.now(), LocalTime.now(),420,"Cooking",
//					"Send To Customer",address1,branch1,user1,null));
//
//
//			/**
//			 * Order initialization
//			 */
//			List<Order>orders=new ArrayList<>();
//			orders.add(order1);
//			Item item1 = itemRepository.save(new Item(9001,"Chicken Biryani","cooking at grill",40, "non-veg",false,null,
//					2,null,null,"pic1", branch1,carryBox1,orders,subCategory1));
//
//			orders.add(order2);
//			Item item2 = itemRepository.save(new Item(9002,"Mutton Biryani","cooking at grill",40, "non-veg",true,null,
//					2,null,null,"pic10", branch1,carryBox1,orders,subCategory1));
//
//			Item item3 = itemRepository.save(new Item(9003,"Special Chicken","cooking at grill",40, "veg",true,null,
//					2,null,null,"pic5", branch3,carryBox3,orders,subCategory1));
//
//			Item item4 = itemRepository.save(new Item(9004,"ERU","ERU with Whata FUFU",40, "non-veg",true,null,
//					2,null,null,"pic1", branch2,carryBox5,orders,subCategory1));
//
//			Item item5 = itemRepository.save(new Item(9005,"Rice","cooking at grill",40, "non-veg",false,null,
//					2,null,null,"pic2", branch1,carryBox1,orders,subCategory1));
//
//			Item item6 = itemRepository.save(new Item(9006,"Chicken Biryani","cooking at grill",40, "non-veg",true,null,
//					2,null,null,"pic1", branch1,carryBox2,orders,subCategory1));
//
//			Item item7 = itemRepository.save(new Item(9007,"OKOK ","red Oil",40, "veg",true,null,
//					2,null,null,"pic7", branch5,carryBox1,orders,subCategory1));
//
//			Item item8 = itemRepository.save(new Item(9008,"Chicken Biryani","cooking at grill",40, "non-veg",true,null,
//					2,null,null,"pic8", branch4,carryBox3,orders,subCategory1));
//		}catch (Exception e){
//			System.out.println("save data Error "+ e.getMessage());
//		}


		System.out.println("\n\n\n ======================== >> Back ENd Started");

	}

	@Bean
	public WebMvcConfigurer corsConfigurer() {
		return new WebMvcConfigurer() {
			@Override
			public void addCorsMappings(CorsRegistry registry) {
				registry.addMapping("*").allowedOrigins("*");
			}
		};
	}
}
