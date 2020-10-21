# Bugs 
- [ ] Adding a new event will not dismiss the current view but will add the new event
- [x] Deleting an event will crash: 'terminating with uncaught exception of type NSException' 

Coding in Protocol, Event, Schedule swift files (10pt)

- [x] Write a protocol that defines a function takes an Event object as a parameter (2pt)
- [ ] In the Event class add a new base init, and the 2 convenience init methods (6pt)
- [x] in the Schedule class add an overloaded addNewEvent function with an Event parameter (2pt)

Coding in EventInfoViewController (5pt)

- [x] Add an uninitialized optional Event property in this class (1pt)
- [x] In the viewDidLoad function, if the optional Event object is set, display its info in the Labels and TextView (4pt)

Coding in NewEventViewController (14pt)

- [x] Add an uninitialized optional delegate property of your protocol type in this class (1pt)
- [x] Inside the button’s action, if the textField and textView’s text properties are not equal to an empty string, then create a new event from the users input. Then pass the Event to the delegate’s function before unwinding the segue (8pt)
- [x] Add dismissing the textView’s, and textField’s keyboard in the button’s action (2pt)
- [x] Add dismissing the textView’s, and textField’s keyboard in the touchesBegan function (3pt)

Coding in ScheduleTableViewController (8pt)

- [x] Make this class inherit from your delegate protocol (1pt)
- [x] Add a Schedule property in this class and initialize it (1pt)
- [x] In the viewDidLoad function add an initial Event to the Schedule with test data (1pt)
- [x] In the “New’ button action perform the segue with the correct identifier to show the NewEventViewController (2pt)
- [x] Write the delegate function to add the Event parameter to the Schedule, and then call the reloadData method from your tableView (3pt)

Coding tableView functions in ScheduleTableViewController (10pt)

- [x] Override the tableView’s numberOfRowsInSection function (1pt)
- [x] Override the tableView’s cellForRowAt indexPath function (1pt)
- [x] In the numberOfRowsInSection function return the event count from your Schedule object (1pt)
- [x] In the cellForRowAt indexPath function dequeue a tableViewCell using the prototype cell’s identifier, accessing your Schedule’s array at the current indexPath, and displaying the event’s title and date in the cell’s Label before returning it (5pt)
- [x] Use the tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){} function to delete the array element corresponding to the current indexPath when a cell is deleted from the table (2pt)

Coding prepareForSegue function in ScheduleTableViewController (10pt)

- [x] Override the viewController’s prepareForSegue function (1pt)
- [x] If the segue is going to the NewEventViewController, get a copy of the next viewController and set its delegate to the tableViewController class (3pt)
- [x] If the segue is going to the EventInfoViewController, get a copy of the next viewController. Safely get a reference to the selected UITableViewCell, and the indexPath for the current cell. If the cell and indexPath references are successfully referenced, set the EventInfoViewController’s Event object to the selected event in your Schedule’s array (6pt)

QUALITY CONTROL (35pt)

- [ ] Proper Constraints on UI objects (10pt)
- [ ] Code is well written with clear commenting (20pt)
- [ ] Application runs without errors (5pt)
