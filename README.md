README
This is a ruby on rails app with a react frontend, using tailwind and flowbite for styling. Cloudinary is used for the image uploads. Database is postgreSQL.

Versions:
Rails v 7.0.4.3
Ruby version 3.2
React 18.2

dependencies:
Tailwind
Flowbite
axios

uploads images to Cloudinary and stores link in the database

Quick start:
Clone repo
Gem install
Bundle install
Rails db:create
rails db:migrate
Rails db:seed
yarn install

Run project locally:

Rails server start: rails s
React server start: yarn --cwd rails-simple-airbnb-app start

Deploys on Render automatically by pushing to branch hosting