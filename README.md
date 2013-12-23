p4.visualedgedev.com
====================

P4 - Task Master

This application allows users to signup and login to a secure environment in which users can create task lists.

Task lists are dynamic in the sense that the user has full control over the number of task items, input for each item,
and position for each item.  The user has the ability to update and edit task text, color, and position.  All changes to
the task list are saved for future reference.

This application is dependent upon user generated input and the use cases are specific to list based analysis.  
However, the functionality involved with this application will greatly help me and serve as a base for larger application ideas I intend to pursue moving forward.  

- /user/
  -	/tasklist (sortable)
    -		  /task
    -			/create
    -			/edit
    -			/delete
    -			/style
    -			/position


The key functions involved in this application are:

- Create (Add Tasks): Users have the ability to add new tasks to the list.  These tasks are prepended to the overall tasklist.

- Edit (Edit Tasks): Users can modify the existing task items.

- Delete (Delete Tasks): Users can remove task items from the list.

- Style (Color Tasks): Users can style the task item color.

- Serialize (Save Task Item Order): Users can define the order of the list through drag and drop, which is saved for future login.

Each of the above functions are managed through javascript and ajax, and saved to the database using PHP and SQL.  As a result, no page refresh
is ever needed when working with a list, and all actions are saved behind the scenes for a user.  In the create function, ajax is used to insert a "piece" of code.  
For the edit, delete, style, and position functions, ajax is used to pick up the respective element id's and properties to pass back to the controllers.  Javascript is
used on success to make all changes in real time.

The serialize function is called after each function to preserve the order and the order is written to the database on any modification.

- User Signup Validation: is handled through javascript, with PHP serving as a "bacukup" to prevent blank data and sanitizing results.
Ajax is used in the user signup for dynamically searching if a given email address is already in use.

Resources:
Stack Overflow, jQuery API, Bootstrap, and Bootstrap tutorials.  Especially for the serialize function and my initial ajax calls, I leveraged several examples
and posts for guidance.

Sticky Footer: http://getbootstrap.com/2.3.2/examples/sticky-footer.html
Sign Up Page Image: http://www.getbetterhq.com/wp-content/uploads/2013/09/to-do-list1.jpg

Open Items:
Moving forward, I am very interested in adding another dimension to my lists where every user has lists, and each list has items.

-/user
  -	/list1
    -		/itemA
    -		/itemB
    -		/itemC
  -	/list2
    -		/itemD
    -		/itemE

Just as tasks are sortable and editable now, both lists and their associated tasks would be sortable and editable.  I ran into challenges attempting
to pass the list "ID" to a new view via Ajax in my attempts at this.  I am very open to any advice or ideas.





