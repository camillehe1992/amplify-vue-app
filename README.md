# Host a Vue Application in AWS Amplify

This template provides a Infrastructure as Code (IaC) solution for Vue3 based frontend application that hosted in AWS Amplify service. The solution has below features:

- A **Vue3** (3.4.31) based frontend application that built using latest **Vite** (5.3.4).
- The application is hosted in **AWS Amplify** with Mutli-Apps for multiple environments support.
- AWS Infrastructure is provisioned and managed using **Terraform**.
- **GitHub Actions** workflows to provision AWS infrastructure.

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
