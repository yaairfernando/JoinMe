[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield2]][linkedin-url2]
[![Hireable][hireable]][hireable-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
 <h2 align="center">Join me Application.</h2>

  <p align="center">
    Ruby on Rails project that allow the user to create new events and invite people to their events.
    <br />
    <a href="https://github.com/YairFernando67/JoinMe"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/YairFernando67/JoinMe">View demo</a>
    ·
    <a href="https://github.com/YairFernando67/JoinMe/issues">Report bug</a>
    ·
    <a href="https://github.com/YairFernando67/JoinMe/issues">Request feature</a>
  </p>

</p>

## Table of Contents
* [About the project](#about-the-project)
  * [Built with](#built-with)
* [Required installations](#Required-Installations)
  * [Prerequisites](#Prerequisites)
  * [Installing](#Installing)
  * [Instructions](#Instructions)
* [Contact](#contact)
* [Contributing](#Contributing)
* [Show your support](#Show-your-support)

## About The Project

![Screenshot Image](app/assets/images/login.png)  

### Built With
The project was developed using the following technologies:
- [Ruby](https://www.ruby-lang.org/es/)
- [Ruby on Rails](https://rubyonrails.org/)

## Required Installations

### Prerequisites

This project runs on [Ruby](https://www.ruby-lang.org/en/documentation/installation/) and [Ruby on Rails](http://installrails.com/)

### Installing

<p>Install the following to get this project running in your machine:</p>
 
* Ruby
* Ruby on Rails

After installation run `ruby -v` to make sure Ruby installed correctly. Example:
```
$ ruby -v
ruby 2.6.4p104 (2019-08-28 revision 67798) [x86_64-linux]
```

Also make sure that Rails is installed, but running `rails -v`. 
Example:
```
$ rails -v
Rails 6.0.2.1
```

### Instructions

<p>Follow these steps:</p>

Clone the Repository

```Shell
user@pc:~$ git clone https://github.com/YairFernando67/JoinMe
```

On the console go to the folder that was created

```Shell
user@pc:~$ cd JoinMe
```

```
user@pc:~/JoinMe$ bundle install --without production
```

Then migrate the database:

```
user@pc:~/JoinMe$ rails db:migrate
```

Run this command if you encountered a problem running rails db:migrate

```
user@pc:~/JoinMe$ bundle exec rails db:migrate
```

To run the rspec tests run

```
user@pc:~/JoinMe$ rspec spec
```


Finally run the server

```
user@pc:~/JoinMe$ rails s
```

Open your browser on [http://localhost:3000](http://localhost:3000)

Start webpack dev server by running this command in a new tab

```
user@pc:~/JoinMe$ bin/webpack-dev-server
```

LIVE VERSION: [Join me](https://joinmyevent.herokuapp.com/)

## Contact

👤 **Yair Fernando Facio**

<a href="https://yairfernando67.github.io/Portfolio/" target="_blank">
    
  ![Screenshot Image](app/assets/images/logo.jpg) 

</a>

- Github: [@YairFernando67](https://github.com/YairFernando67)
- Twitter: [@YairFernando18](https://twitter.com/YairFernando18)
- Linkedin: [softwaredeveloperyairfacio](https://www.linkedin.com/in/softwaredeveloperyairfacio/)
- Email: [yair.facio11@gmail.com](https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=yair.facio11@gmail.com)
- Portfolio: [softwaredeveloper](https://yairfernando67.github.io/Portfolio/)


<p align="center">

  Project Link: [https://github.com/YairFernando67/JoinMe](https://github.com/YairFernando67/JoinMe)

</p>

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/YairFernando67/JoinMe/issues).

## Show your support

Give a ⭐️ if you like this project!

<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/YairFernando67/JoinMe.svg?style=flat-square
[contributors-url]: https://github.com/YairFernando67/JoinMe/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/YairFernando67/JoinMe.svg?style=flat-square
[forks-url]: https://github.com/YairFernando67/JoinMe/network/members
[stars-shield]: https://img.shields.io/github/stars/YairFernando67/JoinMe.svg?style=flat-square
[stars-url]: https://github.com/YairFernando67/JoinMe/stargazers
[issues-shield]: https://img.shields.io/github/issues/YairFernando67/JoinMe.svg?style=flat-square
[issues-url]: https://github.com/YairFernando67/JoinMe/issues
[license-shield]: https://img.shields.io/github/license/YairFernando67/JoinMe.svg?style=flat-square
[license-url]: https://github.com/YairFernando67/JoinMe/blob/master/LICENSE.txt
[linkedin-shield2]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url2]: https://www.linkedin.com/in/softwaredeveloperyairfacio/
[hireable]: https://cdn.rawgit.com/hiendv/hireable/master/styles/flat/yes.svg
[hireable-url]: https://www.linkedin.com/in/softwaredeveloperyairfacio/