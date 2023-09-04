
# README
This is a ruby on rails app with a react frontend, using tailwind and flowbite for styling. 
Cloudinary is used for the image uploads. Database is postgreSQL.

**Versions:**<br />
Rails v 7.0.4.3<br />
Ruby version 3.2<br />
React 18.2<br />


**dependencies:**<br />
Tailwind<br />
Flowbite<br />
axios<br />


**Quick start:**<br />
Clone repo<br />
Gem install<br /> 
Bundle install<br />
Rails db:create<br />
rails db:migrate<br />
Rails db:seed<br />
yarn install<br />



**Run project locally:**<br />

Rails server start: rails s<br />
React server start: yarn --cwd rails-simple-airbnb-app start<br />


Deploys on Render automatically by pushing to branch hosting <br />
Render deploy is successful - some problems with live hosting in terms of ruby api connection.


**Key features:**<br />

fun project to work on basic Ruby and React<br />

This is a basic airbnb clone where you can display a holiday home, view details of the home., and create a new holiday home.<br />

no authentication or log in, just a Ruby API<br />

Basic features of the site can create a new flat and upload images and photos. <br />

uploads images to Cloudinary and stores link in the database<br />
