# Cellr
_Cellr_ is a basic rails web app to help you track your wine Cellr Inventory and value.

## Installation

1. Clone or download the repo: https://github.com/chilbert/cellr-rails

2. Inside of the project directory run:

    $ bundle

to install dependencies.

3. To create and seed the database, type:

    $ rails db:migrate

    and then:

    $ rails db:seed

4. Start your rails server locally:

    $ rails s


## Facebook OAuth setup

To use the Facebook Authentication feature that allows users to login with their Facebook account you will need to:

1. Visit `https://developers.facebook.com`

2. Create/select your App.

3. Navigate to 'Settings', 'Basic' make note of 'EMAIL ADDRESS' and a 'PRODUCT NAME'

4. Create a `.env` file at the root of your app and add your Facebook App ID and App Secret to the `.env` file like this:

  `FACEBOOK_KEY=AppID Goes Here`  
  `FACEBOOK_SECRET=AppSecrete Goes Here`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chilbert/cellr-rails.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
