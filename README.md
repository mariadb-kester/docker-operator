# docker-operator
A Docker Container to run to deploy the MariaDB Operator


Create yourself a Digital Ocean Account
Clone this repoisitory 
Copy the .env.example file and add your API KEY

docker compose up -d --build
docker compose build --no-cache

to build :
make init-demo
make plan-demo
make apply-demo
make initialise-helm
make install-operator
kubectl apply -f config
kubectl apply -f examples/mariadb_galera_maxscale.yaml


# Terraform Demo to build MariaDB Enterprise in Containers

[![License](https://img.shields.io/badge/mit-blue.svg)](https://opensource.org/licenses/mit)
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/mariadb-kester/terraformDemo/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/mariadb-kester/terraformDemo/tree/main)
![GitHub stars](https://img.shields.io/github/stars/mariadb-kester/terraformDemo?style=social)
![GitHub forks](https://img.shields.io/github/forks/mariadb-kester/terraformDemo?style=social)

This project is designed to create a containerised Kubernetes infrastructure on DigitalOcean, and deploy the following
using automation:

- [MariaDB Enterprise Server]([https://mariadb.com])
- MaxScale
- PHP test application

For this demonstration to work, you will require various [third party accounts](#third-party-accounts).

As this is a demonstration of Enterprise MariaDB you will also require
an [Enterprise Customer Download Token](https://customers.mariadb.com/downloads/token/?_ga=2.26935487.388521418.1665738866-1398472177.1665738866)
.

---

### Terms of use

**Nothing in this demonstration is designed to be used in production and this is not supplied, supported or endorsed by
MariaDB.**

*Please note the free $200 credit is enough to run this demonstration, however, if you do not decommission your
services, or you use more than the free credit you will be liable for the cost.*

---

### Prerequisites

### You!

You require a certain level of technical knowledge to complete this, as you are required to install some tools to your
computer.

The demonstration is designed to run on a MacBook or linux based computer where you have access to the internet and a
terminal, where you can execute all the commands with the required permissions.

### Third Party Accounts

You will require FREE accounts for:

- [Github](./docs/files/github/readme.md)
- [CircleCi](./docs/files/circleci/readme.md)
- [Digital Ocean](./docs/files/digitalocean/readme.md)

[CircleCi](./docs/files/circleci/readme.md) and [Digital Ocean](./docs/files/digitalocean/readme.md) support Single Sign
On (SSO) using your GitHub account. SSO allows easy navigation between the services and allows you to link the accounts
together.

It is important to create your [Github](./docs/files/github/readme.md) account before creating the other accounts.

---

## Getting Started

Hopefully you have already created the [Third Party Accounts](#third-party-accounts) required.

You can now [fork](./docs/files/github/fork.md) the required repositories.

Once you have forked the repositories, there is a simple script to run:

    bash <(curl https://raw.githubusercontent.com/mariadb-kester/terraformDemo/main/bin/installation.sh)

This script will check out your forked projects, prompt you for some inputs and will prepare your system ready to build.

When this script runs you might need to enter your Operating System User password, you might also have to accept some
prompts with a `y` or `yes`

To make it easy, there is a `make` script to set up your laptop, this will ask you for your GitHub User Name and email
address and an Access Key for Digital Ocean.

*(note: if you are prompted for a password, it will be your computer password, this is not always clear, you might also
be prompted for some 'y' inputs)*

### destroy

The destroy command will delete the infrastructure. This is important, if you have finished using it, to stop getting
charged. Clearly, do not run this until you have finished.

`make destroy-dev`

If you are running the destroy command, it will ask you to confirm by typing `yes` at the prompt.

### Contributing to *terraformDemo*

<!--- If your README is long or you have some specific process or steps you want contributors to follow, consider creating a separate CONTRIBUTING.md file--->
To contribute to the *terraformDemo* repository, follow these steps:

1. Fork this repository.
2. Create a branch: `git checkout -b <branch_name>`.
3. Make your changes and commit them: `git commit -m '<commit_message>'`
4. Push to the original branch: `git push origin my-helm-repo/<location>`
5. Create the pull request.

Alternatively see the GitHub documentation
on [creating a pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request)
.

### Contact

If you want to contact me you can reach me at kesterriley@hotmail.com.

### License

<!--- If you're not sure which open license to use see https://choosealicense.com/--->

This project uses the following license: [MIT](https://github.com/mariadb-kester/terraformDemo/blob/master/LICENSE).

### Disclaimer

Whilst, I might currently work for MariaDB, this work was originally created before my employment by MariaDB and any
development to these scripts is done strictly in my own time. It is therefore not endorsed, supported by or recommend by
MariaDB. 