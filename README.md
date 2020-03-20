<h1 align="center">Welcome to mysql-crash-course 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-v1.0.0-blue.svg?cacheSeconds=2592000" />
  <a href="./LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>

> 🐳A Docker Image for learning MySQL Crash Course. Includes essential databases.

## Introduction

Here is a docker image for who are reading the book 「[MySQL Crash Course](https://forta.com/books/0672327120/)」. Supply a simple way to setup MySQL and create essential databases.

## Install

```sh
git clone https://github.com/lianghx-319/mysql-crash-course.git -b master --depth=1
```

## Usage

First of all, install [docker-ce](https://docs.docker.com/install/) and [docker-compose](https://docs.docker.com/compose/install/)

Then run `init.sh`

This script will create a directory name `db_data` that databases volume mounted under the project for persistent data. And create two secret file in case of exposing your password.

```sh
# run init.sh
./init.sh

# write db root password
echo 'yourpassword' > db_root_password.txt

# write db user password
echo 'yourpassword' > db_password.txt

# build a docker container
docker-compose up -d
```

Now you can use DB admin tool or command line to access db with 

**HOST** `IP` or `localhost`

**PORT** `3326`

**USER** `crashcourse` or `root`

**PASSWORD** `yourpassword`

## Author

👤 **Han**

* Website: [coming soon](https://blog.hanxx.icu)
* Github: [@liang-319](https://github.com/liang-319)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/lianghx-319/mysql-crash-course/issues). 

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2020 [Han](https://github.com/liang-319).<br />
This project is [MIT](./LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_