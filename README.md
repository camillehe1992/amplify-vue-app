# Host a Vue Project in AWS Amplify using Terraform (Template)

[![license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/camillehe1992/scaffolding-serverless-project-on-aws/blob/main/LICENSE)
[![nodejs-18.18.2](https://img.shields.io/badge/nodejs-18.18.2-green.svg)](https://www.python.org/downloads/release/nodejs-18/)
[![version](https://img.shields.io/badge/version-0.0.1-green.svg)](https://github.com/camillehe1992/scaffolding-serverless-project-on-aws/releases/tag/v0.0.1)

This template provides a Infrastructure as Code (IaC) solution for Vue3 based frontend application that hosted in AWS Amplify service. The solution has below features:

- A **Vue3** (3.4.31) based frontend application that built using latest **Vite** (5.3.4).
- The application is hosted in **AWS Amplify** with Mutli-Apps for multiple environments support.
- AWS Infrastructure is provisioned and managed using **Terraform**.
- **GitHub Actions** workflows to provision AWS infrastructure.
- Enabled **ESLint**, **Prettier**, pre-commit using husky.

Find the detailed introduction from blog [Host a Vue Project in AWS Amplify using Terraform](https://dev.to/camillehe1992/host-a-vue-project-in-aws-amplify-using-terraform-2l89).

## Amplify Infrastructure Management Platform

Since hosting frontend application in AWS Amplify is a common practice, Terraform related source code and documentation are extracted and moved to an central managed GitHub repository [aws-amplify-platform](https://github.com/camillehe1992/aws-amplify-platform).

In the repository, AWS Amplify infrastructure are modulized, and managed centrally. The benefits are:

- All AWS Amplify app can be provisioned and managed centrally. Version management for AWS Infrastructure and frontend project source code are separated, which is helpful for privilege control and management.
- Different the permissions for AWS infrastructure and frontend source code. For example, Develop team should have restricted access for AWS infrastructure, which should be the responsibilities of Operation team, especially for production release.
- Different roles/users can focus on the tasks within their responsibilities.

Go to repository [aws-amplify-platform](https://github.com/camillehe1992/aws-amplify-platform) readme documentation to find out how to setup a new Vue based frontend project using this template repository.

## Get Started

### Install Nodejs & npm via nvm

I recommend to install `nvm` and manage nodejs version following the [offical tutorial](https://github.com/nvm-sh/nvm?tab=readme-ov-file#intro). Here is the installation versions on my desktop (MacBook Air M2).

```bash
nvm --version
# 0.39.3
node --vesion
# v18.18.2
npm --version
# 9.8.1
```

### Install npm Dependencies

```bash
# Git pull source code from remote
git clone https://github.com/camillehe1992/amplify-vue-app.git
cd amplify-vue-app

# Install npm dependencies and start the server
npm install
npm run dev
```

The local server is available on [http://localhost:5173](http://localhost:5173/)

## Deployment

Follows the [documentation](./docs/Deployment.md) to deploy the application to AWS Amplify from local machine or via GitHub Actions workflows.

## References

- [AWS Amplify](https://aws.amazon.com/amplify/?gclid=CjwKCAjw74e1BhBnEiwAbqOAjL3OaYibKLHhet57mObXvsfr4_Q-euu366CVlQYrNTNEFRmfg7LmpRoCCb4QAvD_BwE&trk=b845ae09-4d10-4f92-a039-7c89dcf49eaf&sc_channel=ps&ef_id=CjwKCAjw74e1BhBnEiwAbqOAjL3OaYibKLHhet57mObXvsfr4_Q-euu366CVlQYrNTNEFRmfg7LmpRoCCb4QAvD_BwE:G:s&s_kwcid=AL!4422!3!647258095158!e!!g!!aws%20amplify!19621370789!149166973081)
- [Vuejs](https://vuejs.org/guide/introduction.html)
- [Vite](https://vitejs.dev/guide/#scaffolding-your-first-vite-project)
- [Prettier](vue/require-default-prop)
- [ESLint](https://eslint.org/docs/latest/use/configure/configuration-files)
