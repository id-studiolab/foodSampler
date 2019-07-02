# foodsempler
a node js server exposing rest api.

- use `npm install` to install the dependencies

- run the server with `npm run dev`

- update the apidoc using `gulp generateDoc`

- deploy to heroku with `git subtree push --prefix server/foodsampler/ heroku master`

## Usage
- Check [https://foodsampler.herokuapp.com/doc](https://foodsampler.herokuapp.com/doc) for a list of accessible api.
- All api requires the user to get an authorization token via the login api.
- The sign-up api is currently disabled, only the system administrator can create new accounts by re-enablyng the sign-up api and usin it to add new users to the DB.

## How to get the system ready for testing.
- use the api to create a new home.
- use the api to create new devices, make sure you define in which home the device will be added to

## How to chech the server logs
- login to heroku console and check if there are any error in the [console](https://dashboard.heroku.com/apps/foodsampler/logs)
