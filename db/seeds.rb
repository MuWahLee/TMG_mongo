# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Product.destroy_all

temp_password = "123"

User.create([
  {email:                   "mlee2569@hotmail.com",
    password:               temp_password,
    password_confirmation:  temp_password,
    first_name:             "Mu Wah",
    last_name:              "Lee"
    },

  {email:                   "lee-mw@hotmail.com",
    password:               temp_password,
    password_confirmation:  temp_password,
    first_name:             "MW",
    last_name:              "Lee"
    },

  {email:                   "mlee2569@gmail.com",
    password:               temp_password,
    password_confirmation:  temp_password,
    first_name:             "A N",
    last_name:              "Other"
    },
  ])

products = Product.create([
  {:product_name=>"Powerbar Gel Shots - Flavour: Cola",
    :product_category=>"Food",
    :product_weight=>60,
    :product_calories=>198
    },
  {:product_name=>"Compeed Blister Pack",
    :product_category=>"Accessories",
    :product_weight=>25,
    :product_calories=>0
    },
  {:product_name=>"Sunscreen Plus 30+",
    :product_category=>"Accessories",
    :product_weight=>135,
    :product_calories=>0
    },
  {:product_name=>"Mobile phone",
    :product_category=>"Accessories",
    :product_weight=>112,
    :product_calories=>0
    },
  {:product_name=>"my favourite snacks",
    :product_category=>"Food",
    :product_weight=>45,
    :product_calories=>3000
    },
  {:product_name=>"Coghlan 6 Function Whistle",
    :product_category=>"Accessories",
    :product_weight=>55,
    :product_calories=>0
    },
  {:product_name=>"Glide - small",
    :product_category=>"Accessories",
    :product_weight=>12.8,
    :product_calories=>0
    },
  {:product_name=>"Clif Energy Bar - Flavour: Peanut Toffee Buzz",
    :product_category=>"Food",
    :product_weight=>70,
    :product_calories=>250
    },
  {:product_name=>"Clif Energy Bar - Flavour: Chocolate Almond Fudge",
    :product_category=>"Food",
    :product_weight=>70,
    :product_calories=>250
    },
  {:product_name=>"Salomon Tee",
    :product_category=>"Clothing",
    :product_weight=>195,
    :product_calories=>0
    },
  {:product_name=>"7 day High-energy ration pack",
    :product_category=>"Food",
    :product_weight=>3400,
    :product_calories=>16800
    },
  {:product_name=>"Raidlight Double Water bladder 3L",
    :product_category=>"Accessories",
    :product_weight=>240,
    :product_calories=>0
    },
  {:product_name=>"Clif Energy Bar - Flavour: Coconut Chocolate Chip",
    :product_category=>"Food",
    :product_weight=>75,
    :product_calories=>240
    },
  {:product_name=>"Clif Energy Bar - Flavour: Chocolate Brownie",
    :product_category=>"Food",
    :product_weight=>75,
    :product_calories=>240
    },
  {:product_name=>"Black Diamond Distance Z Hiking poles",
    :product_category=>"Accessories",
    :product_weight=>340,
    :product_calories=>0
    },
  {:product_name=>"Komperdell ultralight Hiking poles",
    :product_category=>"Accessories",
    :product_weight=>410,
    :product_calories=>0
    },
  {:product_name=>"Esbit Pocket Stove small",
    :product_category=>"Accessories",
    :product_weight=>180,
    :product_calories=>0
    },
  {:product_name=>"Expedition Foods - Flavour: Chicken Tikka",
    :product_category=>"Food",
    :product_weight=>170,
    :product_calories=>809
    },
  {:product_name=>"First aid pack (ultralight)",
    :product_category=>"Accessories",
    :product_weight=>795,
    :product_calories=>0
    },
  {:product_name=>"Salt Stick Dispenser mini",
    :product_category=>"Food",
    :product_weight=>12,
    :product_calories=>0
    },
  {:product_name=>"Emergency Blanket",
    :product_category=>"Accessories",
    :product_weight=>113,
    :product_calories=>0
    },
  {:product_name=>"Nuun - Flavour: orange",
    :product_category=>"Food",
    :product_weight=>70,
    :product_calories=>30
    },
  {:product_name=>"Nuun - Flavour: lemon-lime",
    :product_category=>"Food",
    :product_weight=>70,
    :product_calories=>30
    },
  {:product_name=>"Nuun - Flavour: fruit punch",
    :product_category=>"Food",
    :product_weight=>70,
    :product_calories=>30
    },
  {:product_name=>"Water purifying tablets",
    :product_category=>"Food",
    :product_weight=>40,
    :product_calories=>0
    },
  {:product_name=>"Black Diamond lightweight gloves",
    :product_category=>"Clothing",
    :product_weight=>36,
    :product_calories=>0
    },
  {:product_name=>"Montane Featherlite Marathon Jacket",
    :product_category=>"Clothing",
    :product_weight=>120,
    :product_calories=>0
    },
  {:product_name=>"Salomon Lab Tank T-shirt",
    :product_category=>"Clothing",
    :product_weight=>90,
    :product_calories=>0
    },
  {:product_name=>"Packtowl Ultralight Towel - medium",
    :product_category=>"Accessories",
    :product_weight=>22,
    :product_calories=>0
    },
  {:product_name=>"Knife and Spork set",
    :product_category=>"Accessories",
    :product_weight=>26,
    :product_calories=>0
    },
  {:product_name=>"Petzl Zipka Headlamp",
    :product_category=>"Accessories",
    :product_weight=>85,
    :product_calories=>0
    }, 
  {:product_name=>"Osprey Talon 33l Pack",
    :product_category=>"Accessories",
    :product_weight=>900,
    :product_calories=>0
    },
  {:product_name=>"Salomon Cap",
    :product_category=>"Clothing",
    :product_weight=>60,
    :product_calories=>0
    }
  ])