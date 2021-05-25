# README
This project is live on: https://cafe-euphoria.herokuapp.com/

To enter as admin:
 ADMIN-CREDENTIALS :
    Email: admin@cafe-euphoria.com
    Password: adminpassword
#! PLEASE DON'T UNNECESSARILY DELETE THE MENU ITEMS (option visible after hovering over the menus)
To enter as user:
  Sing up First.

Features:
  New user sign up and sign in.
  User signed in even after page reloads or redirects till he did not get sign-out himself.
  No two users can look up or chagne another user's order.
  Only Admins are allowed to change menu of cafe and process the orders,
    To acheive this functionality users sign with special characters are not allowed and proper error messages will be displayed.
  Users can see order price in real time.
  All other standard security features have been considered.

Tech Stack:
  Programming language: Ruby
  Framework: Rails
  Database: Postgres
  Deployment: Heroku

Installation guide for local machine
  Install rails and postgres.
  Follow this guide to setup the rails: https://guides.rubyonrails.org/v5.0/getting_started.html
  Edit the database authentication parameters in "/config/database.yml" file accordingly.
  Run database migrations.
