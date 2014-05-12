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
  {email: "mlee2569@hotmail.com",
    password: temp_password,
    password_confirmation: temp_password
    },

  {email: "lee-mw@hotmail.com",
    password: temp_password,
    password_confirmation: temp_password
    },

  {email: "mlee2569@gmail.com",
    password: temp_password,
    password_confirmation: temp_password
    },
  ])

products = Product.create([
  {:product_name=>"Gel Shots",
    :product_category=>"Food",
    :product_weight=>50,
    :product_calories=>9999
    },
  {:product_name=>"Blister Pack",
    :product_category=>"Accessories",
    :product_weight=>10,
    :product_calories=>999
    },
  {:product_name=>"Sun Screen",
    :product_category=>"Accessories",
    :product_weight=>150,
    :product_calories=>0
    },
  {:product_name=>"Mobile phone",
    :product_category=>"Accessories",
    :product_weight=>136,
    :product_calories=>0
    },
  {:product_name=>"my favourite snacks",
    :product_category=>"Food",
    :product_weight=>45,
    :product_calories=>3000
    },
  {:product_name=>"Whistle",
    :product_category=>"Accessories",
    :product_weight=>1,
    :product_calories=>0
    },
  {:product_name=>"Glide",
    :product_category=>"Accessories",
    :product_weight=>30,
    :product_calories=>0
    },
  {:product_name=>"Cliff Energy Bar - Flavour: Peanut Butter",
    :product_category=>"Food",
    :product_weight=>75,
    :product_calories=>250
    },
  {:product_name=>"Under Armour Singlet",
    :product_category=>"Clothing",
    :product_weight=>18,
    :product_calories=>0
    },
  {:product_name=>"7 day High-energy ration pack",
    :product_category=>"Food",
    :product_weight=>3400,
    :product_calories=>16800
    },
  {:product_name=>"Water bladder",
    :product_category=>"Accessories",
    :product_weight=>11,
    :product_calories=>0
    },
  {:product_name=>"Cliff Energy Bar - Flavour: Cookies and Cream",
    :product_category=>"Food",
    :product_weight=>75,
    :product_calories=>250
    },
  {:product_name=>"Cliff Energy Bar - Flavour: Chocolate Brownie",
    :product_category=>"Food",
    :product_weight=>75,
    :product_calories=>250
    },
  {:product_name=>"Hiking poles",
    :product_category=>"Accessories",
    :product_weight=>500,
    :product_calories=>0
    },
  {:product_name=>"Cookset",
    :product_category=>"Accessories",
    :product_weight=>556,
    :product_calories=>0
    },
  {:product_name=>"Expedition Foods - Flavour: Chicken Korma",
    :product_category=>"Food",
    :product_weight=>180,
    :product_calories=>807
    },
  {:product_name=>"First aid pack (ultralight)",
    :product_category=>"Accessories",
    :product_weight=>75,
    :product_calories=>0
    },
  {:product_name=>"Salt tablets",
    :product_category=>"Food",
    :product_weight=>5,
    :product_calories=>0
    },
  {:product_name=>"Sun Screen",
    :product_category=>"Accessories",
    :product_weight=>150,
    :product_calories=>900
    },
  {:product_name=>"Glide",
    :product_category=>"Accessories",
    :product_weight=>30,
    :product_calories=>9999
    },
  {:product_name=>"Cliff Energy Bar - Flavour: Honey Crumble",
    :product_category=>"Food",
    :product_weight=>75,
    :product_calories=>250
    },
  {:product_name=>"Blister Pack",
    :product_category=>"Accessories",
    :product_weight=>10,
    :product_calories=>10
    },
  {:product_name=>"Emergency Blanket",
    :product_category=>"Accessories",
    :product_weight=>15,
    :product_calories=>0
    },
  {:product_name=>"Nuun - Flavour: orange",
    :product_category=>"Food",
    :product_weight=>20,
    :product_calories=>500
    },
  {:product_name=>"Water purifying tablets",
    :product_category=>"Food",
    :product_weight=>10,
    :product_calories=>0
    },
  {:product_name=>"gloves",
    :product_category=>"Clothing",
    :product_weight=>4,
    :product_calories=>0
    },
  {:product_name=>"hat",
    :product_category=>"Clothing",
    :product_weight=>1,
    :product_calories=>0
    }
  ])