# PEPERUKA APP

![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
![NODE.js](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white)
![React](https://img.shields.io/badge/react-%2320232a.svg?style=for-the-badge&logo=react&logoColor=%2361DAFB)
![Semantic UI React](https://img.shields.io/badge/Semantic%20UI%20React-%2335BDB2.svg?style=for-the-badge&logo=SemanticUIReact&logoColor=white)
![React Router](https://img.shields.io/badge/React_Router-CA4245?style=for-the-badge&logo=react-router&logoColor=white)
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
![Bootstrap](https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white)
![Styled-Components](https://img.shields.io/badge/styled--components-DB7093?style=for-the-badge&logo=styled-components&logoColor=white)


## Description
This is an e-commerce web app which users can use to order household items and/or food.

## Resources
- Category: has many items.
- Item: belongs to a category.

This is a one-to-many relationship.

## Ruby version
ruby 2.7.4p191 (2021-07-07 revision a21a3b7d23) [x86_64-linux]

## Dependencies
- Make sure ruby is installed in your machine by using this command:
```bash
  rvm list
```
- It should show the ruby version installed.
- If there is no output, install ruby with this command:
```bash
  rvm install 2.7.4 --default
```

- Run the application on your terminal with this command:
```bash
  ruby bin/run
```

## Services (routes)
- Run this command to get your backend working and run this routes in the search engine:
```bash
  rails s
```

- The routes available for this API are:
* GET /categories
* GET /categories/:id
* POST /categories/:id
* POST /items
* GET /cart
* PATCH /cart/:id
* DELETE /cart/:id

## User Journey
- The user views various categories to choose from, for example, gas, food, or groceries.
- Once a category is chosen, the user sees the items under that category. They can add the item to their cart.
- Once done with the items page, the user can checkout from the cart.

## Application Purpose
- This app acts as a one-stop shop for all day-to-day requirements. The products are from vendors close to the user.
- Peperuka appreciates the local vendors as they've been overlooked by mainstream food delivery apps in Kenya. It will bring more demand to their services.
- The app also considers the user as the delivery cost is significantly slashed. The vendors are close to the user so delivery times are faster and the cost is cheaper than ordering from a mainstream app. 


## Author

- [@Randy Kipkurui](https://github.com/randy-04)


## License
[MIT](https://github.com/randy-development-work/phase-4-peperuka-project-server/blob/main/LICENSE.md)

