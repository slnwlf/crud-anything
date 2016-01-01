This is a basic rails blog like the bog app.  It's a lot like my bike blog, but its a ski blog.  Users post a pair of skis by submitting a name and description. 

There are basic CRUD routes that allow blog creation, editing, and deleting.  The main index view shows a list of all the skis that have been posted.

There are no user accounts.  No authentication or authorization. 

Here's what's special about this app:

I dove into Sass for this weekend lab.  Sass is a CSS framework that allows more power features than regular CSS.  It is not a CSS framework like Bootstrap (which contains lots of existing styles), but it can be used in conjunction with Bootstrap.

Sass files (.sass) but be compiled to output regular .css.  The great thing about Ruby on Rails is that Sass is built in so basic .scss files output as regular CSS.  No additional Gems need to be installed.   If we were using Sass with a Node.js app we would need to compile the .sass files somehow.  In Ruby it just magically happens for us. (Which is a Ruby theme)

Some great things about Sass are
-variables
-nesting
-functions
-imports / partials / mix-ins

I'll do a quick demo of Sass for the class showing:

1) Variables

A color like $main-color can be defined in the top of a .sass document.  That variable can be addressed anywhere else in the document, making the styles more readable.  Changing a variable definition will make changes across the app, making the code DRYer and easier to read.

2) Nesting

Nesting styles makes them more logically presented, more readable, and DRYer.   For example a child and parent element are more logically defined by nesting. 

3) Functions

Functions allow cool changes like "darken" which relatively darkens a color by a specified percentage. 

4) Imports / partials / mix-ins

CSS styles can be broken up into different files like a table of contents to organize them more cleanly.  And mix-ins are like variables for long pieces of code (like specificying browser support - vendor specific. 

Sass is a powerful framework for those of us interested in sharpening our front-end skills. 
