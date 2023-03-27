# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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
