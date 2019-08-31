# Cellr
_Cellr_  is a basic Rails app to help track your wine Cellr collection, bottle count and value..

## Installation

1. Clone or download the repo: https://github.com/cyantis/yoga_class_creator

2. In your terminal, navigate to the app's directory and execute:

    $ bundle

to install dependencies.

3. To create and seed the database, type:

    $ rails db:migrate

    and then:

    $ rails db:seed

4. Launch a local server by executing:

    $ rails s

and then visit `http://localhost:3000`in your browser to access the _YCC_ site.

To end the server session, type `ctrl-c`.

## Google OAuth setup

To use the Open Authentication feature that allows users to login with their Google account you will need to:

1. Visit `https://console.developers.google.com`

2. Create/select your project.

3. Navigate to 'Credentials', then select the 'OAuth consent screen' tab on top, and provide an 'EMAIL ADDRESS' and a 'PRODUCT NAME'

4. Create a `.env` file at the root of your app and add your Client ID and Client Secret to the `.env` file like this:

  `GOOGLE_CLIENT_ID=Client ID Goes Here`  
  `GOOGLE_CLIENT_SECRET=Client Secret Goes Here`

## Usage

First time users ("Teachers") will need to create an account via a username, email, and password or, if setup, login with their Google account. Returning Teachers login via their username and password or Google account.

Once logged in, a Teacher's previous classes will be displayed. From this home page, the Teacher can:

1. Create a new class by clicking `New Class`. Classes require a `Class Title` and `Class Type` and have optional fields for `Playlist` and `Poses`.
2. View a previous class by clicking on the class title.
3. End the session by clicking `Logout`.

By visiting a previous class page, the Teacher can:

1. `Edit` or `Delete` the class.
2. Return to the home page (`Back to Classes`).
3. Add date-stamped notes to the class (`Add Note`).

Once a note has been added to a class, the Teacher can:

1. Edit the note (`Edit Note`).
2. Delete the note (`Delete Note`).

Whether creating or editing a class or note, Teachers always have the opportunity to `Cancel` any additions/changes.

Clicking `Logout` from anywhere in the app ends the Teacher's session.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cyantis/yoga_class_creator.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
