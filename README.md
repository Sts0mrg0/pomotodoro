#Pomotodoro

Pomotodoro is a web application based around the Pomodoro technique
that allows users to create "ToDos" and keep track of
how many Pomodoros they've accumulated for a particular task.


###Technical Details:
Pomotodoro was built using Ruby on Rails, JavaScript, and jQuery. Two database tables were used in building this app; a Users table which stores user information such as username and password digest,
and a Todos table that stores each Todo's title, description, user id, and Pomodoro count.

I decided to implement the countdown timer purely in JavaScript in order to demonstrate how Rails
and JavaScript can smoothly interact with one another.

The most technically difficult thing about this project was getting the Pomodoro incrementer
to synchronize with the countdown clock. I decided to increment the Pomodoro counter once the clock
expired in order to have a true reflection of how many Pomodoros a user has completed. When the
timer expires, an AJAX request is made to have the Pomodoro count increase by one.

###Features
* Sign up/in
* Create, view, edit, and delete Todos
* Start a Pomodoro timer
* When Pomodoro is finished, user is alerted and Pomodoro counter is incremented

###Languages
* JavaScript
* jQuery
* Ruby
* SQL
* HTML
* CSS

###Frameworks
* Rails
