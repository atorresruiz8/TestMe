# TestMe

## Project Description
A quiz app developed by Antonio Torres-Ruiz, Justin Horner, and Yazid Louda that allows a user to test themselves about different programming languages.

## Features
* Create an Account, username and password stored on the device using CoreData.
* Forgot password screen, for simply providing the user with their password.
* Splash screen
* User defaults to save the previously entered username and password combination for ease of repeated use for the user
* Admin page and features
* Admin is able to dynamically create quizzes for users to take, block users and prevent them from being able to log in again, and view every users' scores for their tests
* Facebook login integration
* Side Menu for quickly switching between screens on the app once the user is logged in
* User can leave feedback for the quizzes

## TODO
* Implement email API to send the user's password there instead of printing it on the screen/in an alert.

## Getting Started
git clone https://github.com/atorresruiz8/TestMe
* Must be on MacOS and have Xcode installed.
* If the Podfile is not properly installed, run your terminal app.
* Change directories to "TestMe," wherever you have installed it.
* Run the command 'pod install' to ensure the Podfile is installed, otherwise the project will not work.
* In ResortFeedback folder, open the TestMe.xcworkspace file. This project uses Podfiles, so the TestMe.xcodeproj will not work.
* This app is primarily designed with the iPhone 11 in mind, so run the simulator using an iPhone 11 for the proper viewing experience.
* Build the project and run the app on a simulator, or iPhone.

## Usage
> Install the app onto either your simulator or iPhone by running the build command.
> Once the app is installed and running, wait for the splash screen to end.
> Create an account by selecting the "Create Account" button on the login screen, then entering a username and password.
> Create an admin account if it does not exist.
> If you wish, flip the switch to "On" after inputting your username and password on the login screen to save your information for next time. Sign in.
> If logged into admin role, the user can create a quiz by providing the category, type of question (typing or multiple choice), the question, answer and different answers to fill out the remaining slots of the question.
> The admin can also block a user from logging in by typing their username and submitting it.
> Admin can also view every users' scores by pushing a button.
> If the user is logged into a regular user role, they will be brought to a general dashboard screen.
> They can swipe on the screen, or push the menu button to present a side menu to go through the different screens related to specific users.
> Or they can push one of the four buttons in the middle of the screen to take a test.


## Contributors
* Antonio Torres-Ruiz, project leader, admin functionality designer, primarily set up and developed the CoreData functions, designed user functionality once logged in, and implemented Facebook integration.
* Yazid Louda, primarily developed the dynamically created quizzes, including displaying said quizzes onto the screen. Also helped with UI design.
* Justin Horner, designed functionality to pass the user between the different screens of the app, along with helping calculate the rankings for each user based on scores and designed the user profile page.

## License
This project uses the following license: [<license_name>](<link>).
