# Local Development Environment Setup Documentation

Follow the documentation to setup your local development environment.

## Install Nodejs & NPM via NVM

I recommend to install `nvm` and manage nodejs version following the [offical tutorial](https://github.com/nvm-sh/nvm?tab=readme-ov-file#intro). Here is the installation versions on my desktop (MacBook Air M2).

```bash
nvm --version
# 0.39.3
node --vesion
# v18.18.2
npm --version
# 9.8.1
```

## Install NPM Dependencies

```bash
# Git pull source code from remote
git clone https://github.com/camillehe1992/amplify-vue-app.git
cd amplify-vue-app

# Install npm dependencies and start the server
npm install
npm run dev
```

The local server is available on [http://localhost:5173](http://localhost:5173/)
