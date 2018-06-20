User.create!([
  {email: "13054119-147@uog.edu.pk", encrypted_password: "$2a$10$KIwS1URzDeRw4A/HwRlajO5AVvQpi0sW8j8EJxDv983vje8VzKAcy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2017-09-08 13:32:15", last_sign_in_at: "2017-09-08 08:34:59", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "CK-MNXpLNEyd9L-HzsYW", confirmed_at: "2017-09-07 23:23:08", confirmation_sent_at: "2017-09-07 23:22:53", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, role: 0, name: "Ali Raja", designation: "Area Manager", date_of_birth: "2017-09-07 00:00:00", gender: "male"},
  {email: "13054119-135@uog.edu.pk", encrypted_password: "$2a$10$jt5N5tXdieenyA.uiGx7aerQSwnMxPR.r4lDyxdhG57aJILERePcG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: "GTCgzPP_6MzaPxRrJQ8Z", confirmed_at: nil, confirmation_sent_at: "2017-09-06 16:38:31", unconfirmed_email: nil, failed_attempts: 1, unlock_token: nil, locked_at: nil, role: 0, name: "Farhan Azmat", designation: "Area Manager", date_of_birth: "2017-09-06 00:00:00", gender: "male"},
  {email: "sheikhhussnain23@gmail.com", encrypted_password: "$2a$10$EwJIPE733ORDybfcVAm5ROHWjV2UawoS26VNM5.gq12xVQ6aUqRh.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2018-01-14 12:35:52", last_sign_in_at: "2018-01-14 12:28:54", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "8ceTiPot98eszxxHu9Zy", confirmed_at: "2018-01-14 12:28:47", confirmation_sent_at: "2018-01-14 12:27:44", unconfirmed_email: nil, failed_attempts: 0, unlock_token: nil, locked_at: nil, role: 0, name: "Sheikh Hussnain", designation: "RSO", date_of_birth: "2013-01-14 00:00:00", gender: "male"}
])
User::HABTM_Roles.create!([
  {user_id: 9, role_id: 1},
  {user_id: 10, role_id: 2},
  {user_id: 10, role_id: 2},
  {user_id: 1, role_id: 1},
  {user_id: 13, role_id: 4},
  {user_id: 13, role_id: 4},
  {user_id: 2, role_id: 5},
  {user_id: 14, role_id: 4},
  {user_id: 14, role_id: 4},
  {user_id: 13, role_id: 1},
  {user_id: 15, role_id: 4},
  {user_id: 15, role_id: 4},
  {user_id: 16, role_id: 4},
  {user_id: 16, role_id: 4},
  {user_id: 16, role_id: 1}
])
Role.create!([
  {name: "admin", resource_id: nil, resource_type: nil},
  {name: "newuser", resource_id: nil, resource_type: nil},
  {name: "moderator", resource_id: 6, resource_type: "Item"}
])
Role::HABTM_Users.create!([
  {user_id: 9, role_id: 1},
  {user_id: 10, role_id: 2},
  {user_id: 10, role_id: 2},
  {user_id: 1, role_id: 1},
  {user_id: 13, role_id: 4},
  {user_id: 13, role_id: 4},
  {user_id: 2, role_id: 5},
  {user_id: 14, role_id: 4},
  {user_id: 14, role_id: 4},
  {user_id: 13, role_id: 1},
  {user_id: 15, role_id: 4},
  {user_id: 15, role_id: 4},
  {user_id: 16, role_id: 4},
  {user_id: 16, role_id: 4},
  {user_id: 16, role_id: 1}
])
Category.create!([
  {name: "Prepaid"},
  {name: "Postpaid"},
  {name: "Replacement"}
])
Customer.create!([
  {name: "Adill Butt", cnic: "34201-0822123-5", address: "Gujrat", phone: "03048494014"},
  {name: "Waqas Ali", cnic: "34201-23479823-5", address: "Gujrat", phone: "0330-3234343"},
  {name: "NA", cnic: "NA", address: "NA", phone: "NA"}
])
Expense.create!([
  {name: "expense 2", category: "Utility", amount: 343434},
  {name: "expense 3", category: "Maintinance", amount: 312107},
  {name: "expense 4", category: "Salary", amount: 43434},
  {name: "expense 1", category: "Utility", amount: 343434}
])
Item.create!([
  {name: "Sim", description: "Dummy", product_model_number: "3423432234", vendor_name: "Ali Raja", quantity: 1, value: "200.0", customer_id: 2, category_id: 2, status: "Sold"},
  {name: "Sim", description: "Dummy", product_model_number: "1009393729", vendor_name: "Sheikh Hussnain", quantity: 11, value: "150.0", customer_id: 2, category_id: 1, status: "Expire"},
  {name: "Sim", description: "Dummy", product_model_number: "3434734830", vendor_name: "Hussnain Sheikh", quantity: 1, value: "1000.0", customer_id: 3, category_id: 2, status: "Sold"},
  {name: "Sim", description: "Dummy", product_model_number: "3347832349", vendor_name: "Hussnain Sheikh", quantity: 1, value: "100.0", customer_id: 2, category_id: 3, status: "Sold"},
  {name: "Sim", description: "Dummy", product_model_number: "3403420993", vendor_name: "Sheikh Hussnain", quantity: 1, value: "200.0", customer_id: 5, category_id: 1, status: "New"},
  {name: "Sim", description: "Dummy", product_model_number: "2323501580", vendor_name: "Farhan", quantity: 1, value: "150.0", customer_id: 5, category_id: 3, status: "Expire"},
  {name: "Sim", description: "Dummy", product_model_number: "3434808021", vendor_name: "Ali Raja", quantity: 1, value: "5000.0", customer_id: 5, category_id: 2, status: "New"},
  {name: "Sim", description: "Dummy", product_model_number: "3434277295", vendor_name: "Sheikh Hussnain", quantity: 2, value: "200.0", customer_id: 5, category_id: 2, status: "New"},
  {name: "Sim5", description: "", product_model_number: "1234554321", vendor_name: "Farhan", quantity: 23, value: "833.0", customer_id: 5, category_id: 2, status: "New"}
])
