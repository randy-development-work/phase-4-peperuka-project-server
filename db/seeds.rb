# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Lights out and away We Go!🟢"

Category.create([
    {
        name: "Food",
        image: "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=400"
    },
    {
        name: "Gas",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWdrlopCOIYT6rrFeEE8uRdgMj-EvhphPK_jVbrfekweFK5pKI5Um5Zjq2im9xUgAMavQ&usqp=CAU"
    },
    {
        name: "Groceries",
        image: "https://images.pexels.com/photos/128402/pexels-photo-128402.jpeg?auto=compress&cs=tinysrgb&w=400"
    },
    {
        name: "Beverages",
        image: "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=400"
    },
    {
        name: "Supermarket",
        image: "https://images.pexels.com/photos/3017260/pexels-photo-3017260.jpeg?auto=compress&cs=tinysrgb&w=400"
        # https://images.pexels.com/photos/5380919/pexels-photo-5380919.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load
    },
    {
        name: "Medicine",
        image: "https://images.pexels.com/photos/3652750/pexels-photo-3652750.jpeg?auto=compress&cs=tinysrgb&w=400"
    }
])

Item.create([
    {
        image:"https://images.unsplash.com/photo-1622665632960-aba7ac089541?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHBvcmt8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        name: "pork wet fry",
        vendor: "Manyeki Butchery",
        vendor_contact: "+254702000100",
        location: "hapo kona",
        price: 150,
        category_id: 1
    },
    {
        image:"https://media.istockphoto.com/id/1251373221/photo/pair-of-gas-next-to-a-old-wall.jpg?s=612x612&w=0&k=20&c=GMUkF6RYXBNyjcYL2YiXXiqQIATamGIpEWAIHcuvH5U=",
        name: "2L Gas",
        vendor: "Travis Gas Supply",
        vendor_contact: "+254702000200",
        location: "Kwa Kairu",
        price: 750,
        category_id: 2
    },
    {
        image:"https://images.unsplash.com/photo-1592924357228-91a4daadcfea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dG9tYXRvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60",
        name: "Tomatoes",
        vendor: "Mathee",
        vendor_contact: "+254702000400",
        location: "Kibanda",
        price: 20,
        category_id: 3
    },
    {
        image:"https://images.unsplash.com/photo-1529892485617-25f63cd7b1e9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FwcHVjY2lub3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        name: "Cappuccino",
        vendor: "Hot Drinks",
        vendor_contact: "+254703000100",
        location: "Containers, Roysambu",
        price: 350,
        category_id: 4
    },
    {
        image:"https://images.unsplash.com/photo-1584839404042-8bc21d240e91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGlhcGVyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60",
        name: "Pampers",
        vendor: "Roymart Supermarket",
        vendor_contact: "+254702000300",
        location: "Opposite Tsavo",
        price: 700,
        category_id: 5
    },
    {
        image:"https://images.unsplash.com/photo-1647427017463-ac19f7a245b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29sZCUyMHBpbGxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
        name: "Flu-Gone",
        vendor: "Health-yako",
        vendor_contact: "+254102100100",
        location: "3rd Avenue, Roysambu",
        price: 100,
        category_id: 6
    },
    {
        image:"https://images.unsplash.com/photo-1593422088556-e2e3f35d94a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGlsYXV8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60",
        name: "Pilau",
        vendor: "Ginah's Delicacies",
        vendor_contact: "+254702000110",
        location: "Next to Toto's Car Wash",
        price: 200,
        category_id: 1
    },
    {
        image:"https://images.unsplash.com/photo-1609501676873-b2a6a181ef05?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8c2NvbmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
        name: "Scones",
        vendor: "Midas Pastries",
        vendor_contact: "+254702001100",
        location: "Zimmerman",
        price: 40,
        category_id: 1
    },
    {
        image:"https://images.unsplash.com/photo-1621303837174-89787a7d4729?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FrZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60",
        name: "Custom Cakes",
        vendor: "Midas Pastries",
        vendor_contact: "+254702001100",
        location: "Zimmerman",
        price: 1250,
        category_id: 1
    },
    {
        image:"https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGl6emF8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60",
        name: "Pizzas",
        vendor: "Tamuu Dishes",
        vendor_contact: "+254712100100",
        location: "Roysambu Stage",
        price: 450,
        category_id: 1
    },
    {
        image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaWJXlvGp2IiSgv6ourK5Sd37hbYwbOLGzlFFpapz6yj4mmPvjDFbb4ASRjxfaNHjuD2U&usqp=CAU",
        name: "8L Gas",
        vendor: "Travis Gas Supply",
        vendor_contact: "+254702000100",
        location: "Kwa Kairu",
        price: 1350,
        category_id: 2
    },
    {
        image:"https://images.unsplash.com/photo-1624300477446-d379e923eca8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8a2FsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60",
        name: "Kale",
        vendor: "Mama Mboga",
        vendor_contact: "+254702400100",
        location: "Next to Comrades Apartment",
        price: 20,
        category_id: 3
    },
    {
        image:"https://images.unsplash.com/photo-1564890369478-c89ca6d9cde9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dGVhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
        name: "Chai moto",
        vendor: "Hot Drinks",
        vendor_contact: "+254703000100",
        location: "Containers, Roysambu",
        price: 50,
        category_id: 4
    },
    {
        image:"https://images.unsplash.com/photo-1529258283598-8d6fe60b27f4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWlsayUyMGFuZCUyMGJyZWFkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
        name: "Milk + bread",
        vendor: "Rico's Mart",
        vendor_contact: "+254703070100",
        location: "Tsavo Junction, Roysambu",
        price: 100,
        category_id: 5
    },
    {
        image:"https://images.unsplash.com/photo-1498654077810-12c21d4d6dc3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZWdnc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60",
        name: "Eggs",
        vendor: "Rico's Mart",
        vendor_contact: "+254703070100",
        location: "Tsavo Junction, Roysambu",
        price: 15,
        category_id: 5
    },
    {
        image:"https://images.unsplash.com/photo-1595348020949-87cdfbb44174?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2hleSUyMHByb3RlaW58ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60",
        name: "Whey Protein 2LBs",
        vendor: "Afya Bora Pharmacy",
        vendor_contact: "+254703911100",
        location: "Tsavo, Roysambu",
        price: 2550,
        category_id: 6
    }
])

u1 = User.create([
    {
        username: "pix",
        password: "123"
    }
])

Cart.create([
    {
        image:"https://images.unsplash.com/photo-1595348020949-87cdfbb44174?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2hleSUyMHByb3RlaW58ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60",
        name: "Whey Protein 2LBs",
        vendor: "Afya Bora Pharmacy",
        price: 2550,
        user_id: 1
    }
])

Admin.create({
    admin_name: "a1",
    password: "321"
})


puts "Chequered Flag!🏁"