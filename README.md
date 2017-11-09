# K9 KRIBZ

## Overview
1. App Brief
2. Project Requirements
3. User Stories
4. Wireframes & Workflow
5. Entity Relationship Diagram / DB Schema
6. Tools, Gems and APIs
7. Project Plan and Estimation
8. Bugs/Issues/Future updates
9. Installation/Configuration

---

## 1. App Brief
Finding a dogsitter can be hard, and not everyone has family or friends that live locally and can help out when you go away.  K9 KRIBZ is a two-sided marketplace that provides an online community to connect dog owners with dog sitters, and has various tools that help you choose the right dogsitter or the best dogsitting job.

K9 KRIBZ allows a user to create a free account and browse listings.  To message other users, a user must upgrade and pay a one-off fee.

Link: https://k9-kribz.herokuapp.com/

---

## 2. Project Requirements
1. Create your application using Ruby on Rails.
2. Demonstrate knowledge of Rails conventions.
3. Use postgresql database in development.
4. Use an API (eg. Omniauth, Geocoding, Maps, other..).
5. Use appropriate gems.
6. Use environmental variables to protect API keys etc.
7. Implement a payment system for your product.
8. Your app must send transactional emails (eg. using Mailgun).
9. Your app should have an internal user messaging system.
10. Your app will have some type of searching, sorting and or filtering capability.
11. Your app will have some type of file uploading capability (eg. images).
12. Your app will have authentication (eg. Devise, must have full functionality in place).
13. Your app will have authorisation (users have restrictions on what they can see and edit).
14. Your app will have an admin dashboard for the admin user to administrate the site.
15. Document your application with a README that explains how to setup, configure and use your application.

---

## 3. User Stories
![User Stories](public/images/user-stories.png?raw=true)

---

## 4. Wireframes & Workflow
![Wireframes](public/images/wireframes.png?raw=true)

---

## 5. Entity Relationship Diagram / DB Schema
![ERD](public/images/erd.png?raw=true)

---

## 6. Tools, Gems and APIs
1. Trello - (User stories)
2. Balsamiq - (Wireframes/Workflow)
3. Draw.io - (ERD/Database Schema)
4. Postgresql - (Database)
5. Devise - (Authentication)
6. Devise-bootstrap-views - (Styling)
7. Bootstrap-sass - (Styling)
8. Jquery-rails - (UI)
9. Bootswatch-rails - (Styling)
10. Paperclip - (Image Uploads)
11. geocoder - (Map Geocoding)
12. Google Maps - (Maps)
12. ratyrate - (User ratings)
13. punching_bag - (Profile/Listing view counters)
14. dotenv-rails - (Environment Variables)
15. aws-sdk - (AWS S3 integration)
16. mailgun-ruby - (Automated emails)
17. stripe - (Secure payments)
18. activeadmin - (Admin Dashboard)
19. rubocop - (Code quality)
20. Peer code review by Travis Anderson - (https://github.com/Travis-Anderson83)

---

## 7. Project Plan and Estimation
Having only 2 weeks to complete this project it was important to reach the Minimum Viable Product as soon as possible.  For this project, MVP was simply an app that included authentication, and full CRUD capabilities for Listings which could be completed quickly using Ruby on Rails, and then adding features to cover all the project requirements.  These are listed above.

One of the main features I wanted to implement was an interactive Google Map, which would also cover the API requirement for the project.  This was probably one of the most challenging aspects for me, using the Javascript Google Maps API, considering my limited knowledge of JS at this time.

---

## 8. Bugs/Issues/Future updates
1. Implement pagination - this will be necessary once the amount of listings grows - (will-paginate gem).
2. Unread message notifications/indicators - Indicators shouldn't be too difficult to implement as messages already have a 'read' boolean.
3. Favicon
4. Search Engine Optimisation

## 9. Installation/Configuration
1. Clone repo
2. `$ bundle install`
3. Create a .env file with the following (substituting your own variables):
*GOOGLE_MAPS_JS_API=XXXXX
*GOOGLE_MAPS_EMBED_API=XXXXX
*MAILGUN_API_KEY=XXXXX
*MAILGUN_DOMAIN=XXXXX
*STRIPE_PUBLISHABLE_KEY=XXXXX
*STRIPE_SECRET_KEY=XXXXX
4. `$ rails s`
5. http://localhost:3000/
