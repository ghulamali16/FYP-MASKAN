# MASKAN
This app was built using RoR and JS. It's a simple real estate app designed for agents and costumers. As an agent, you can add properties for sale and rent, upload a property picture, profile picture, and cover picture for your profile, you can also post articles. As a customer, you have access to the agents' profiles where you can see their contact information (phone number and e-mail), see the agent's statistics and their properties listing, and read articles published by the agents.

I used `devise` to manage users and disabled e-mail authentication

## Getting started
To get started with the app clone the repo and run the following commands:
```
$ bundle install --without production
```
Create the database:
```
$ rails db:create
```
Migrate the database:
```
$ rails db:migrate
```
Run the app in a local server:
```
$ rails server
```
Go to:
```
$ localhost:3000/
```

## Future features
- Improve styling for some sections of the app
- Add more features like consultancy and Incremental Payments

## Built with
- Ruby on Rails
- JS
- Webpack
- Devise
- MySQL
- Bootstrap
