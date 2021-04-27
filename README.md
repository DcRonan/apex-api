# APEX API

[Click here for frontend app](https://github.com/DcRonan/apex)

![Microverse](https://img.shields.io/badge/-Microverse-6F23FF?style=for-the-badge)

## Library Directory 📙

| Contents                  |
| ------------------------- |
| [Built With](#built-with) |
| [Live Demo](#live-demo)   |
| [Install](#install)   |
| [Testing](#testing)   |
| [Authors](#authors)       |
| [License](#license)       |

## Description

I have built a Rails API that handles data and authentication to let you track your sports & fitness workouts using a React app that I built.

## Routes

| Action  | What It Does                             | HTTP Verb | URL           |
|:-------:|:----------------------------------------:|:---------:|:-------------:|
| index   | Return a list of current sports. | GET       | `/sports`     |
| create  | Create a new sport.     | POST      | `/sports`     |
| show    | Return a single sport.  | GET       | `/sports/:id` |
| create  | Create a new user.       | POST      | `/users`       |
| session | Create a new session.    | POST      | `/login`       |

## ERD

![ERD](./assets/erd.png)

## Built With 🛠

```
- Ruby on Rails
- Ruby
- PostgreSQL
- Heroku
- VS Code
```

![Ruby on Rails](https://img.shields.io/badge/-Ruby_on_Rails-CC0000?style=for-the-badge&logo=Ruby-on-Rails&logoColor=white&labelColor=000)
![Ruby](https://img.shields.io/badge/-Ruby-CC342D?style=for-the-badge&logo=Ruby&logoColor=white&labelColor=000)
![PostgreSQL](https://img.shields.io/badge/-PostgreSQL-336791?style=for-the-badge&logo=PostgreSQL&logoColor=white&labelColor=000)
![Ruby Gems](https://img.shields.io/badge/-RubyGems-E9573F?style=for-the-badge&logo=RubyGems&logoColor=white&labelColor=000)
![Heroku](https://img.shields.io/badge/-Heroku-430098?style=for-the-badge&logo=Heroku&logoColor=white&labelColor=000)
![VS Code](https://img.shields.io/badge/-VS_Code-007ACC?style=for-the-badge&logo=Visual-Studio-Code&logoColor=white&labelColor=000)

## Install ⏳

> Follow these steps below to get my Application working.

1. - [ ] Open your `Terminal`
2. - [ ] Navigate to the directory where you will like to install the repo by running `cd apex-api`
3. - [ ] Run `git clone git@github.com:DcRonan/apex-api.git` to download <b>or</b> you can download using `HTTPS` by running `git clone https://github.com/DcRonan/apex-api.git` in the terminal
4. - [ ] Run `cd apex-api` to enter the directory
5. - [ ] Run `bundle install` to install Ruby Gems (<b>hint:</b> Mac users, if not working then run `sudo bundle install`)
6. - [ ] Run `rails db:create` to create a local database
7. - [ ] Run `rails db:migrate` to migrate the database
8. - [ ] Run `rails s` to start up the server
9. - [ ] Open `http://localhost:3000/` in your browser


## Testing ⚙

> I have used linters to test my code, which includes: [rspec](https://rspec.info/)

1. - [ ] Open `Terminal` again
2. - [ ] Run `cd apex-api` to enter the directory
3. - [ ] Run `rspec` to start testing
4. - [ ] All tests will pass ✅


## Authors

### 👨‍💻 Daniel Ronan

[![GitHub](https://img.shields.io/badge/-GitHub-000?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/DcRonan) <br>
[![LINKEDIN](https://img.shields.io/badge/-LINKEDIN-0077B5?style=for-the-badge&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/dan-ronan/) <br>
[![EMAIL](https://img.shields.io/badge/-EMAIL-D14836?style=for-the-badge&logo=Mail.Ru&logoColor=white)](mailto:danielconnorronan@gmail.com) <br>
[![TWITTER](https://img.shields.io/badge/-TWITTER-1DA1F2?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/dc_ronan)

### 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/DcRonan/apex-api/issues).

### Show your support

Give a ⭐️ if you like this project!

### License

![Cocoapods](https://img.shields.io/cocoapods/l/AFNetworking?color=red&style=for-the-badge)