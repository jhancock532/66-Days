# OO Design & UML

## High-level Architecture diagram

![Activity Diagram](https://raw.githubusercontent.com/simon-wh/66-Days/master/Portfolio%20A/Images/Architecture%20diagram.jpg)

Each annotated arrow describes the following processes:
1. The user tracks a habit, or multiple habits for the day on their device.
1. The tracked habits inputted to the device is then sent as data to the habit manager, which will process and update the appropriate variables within the application.
1. The habit manager will send the appropriate information to the server, i.e. the information surrounding habit completion overall.
1. The habit manager processes the score based on the input from the user and forwards it to the visualisation class.
1. The server communicates interaction data of all users to Ben.
1. Ben sends any updates he wishes to make to the course content to the server.
1. The server forwards these updates to the class holding the course content within the application.
1. The course content is outputted to the device.
1. All data that needs visualising, e.g. Score, days logged in etc. is processed and sent to the device.
1. All recieved data is then displayed on the device for the user to view.

### Components within the application:
There are three main high level components within the application:
1. The habit manager
1. The visualisation manager
1. The course content manager

The habit manager holds information for all the habits that can be tracked and directly retrieves information of the specific instances for these habits, it also ensures that habits are being stored correctly. The visualisation manager outputs data recieved from the habit manager to the device in a specific format e.g. a line graph to show progression of habits tracked over time, any updates to the data must then be updated in real time to the visualastion manager so that the visualised data is representative. 

The course content manager simply outputs any course content that the user wishes to view to the device, and must be able to communicate with the server so that any updates that Ben wishes to make the course can be updated by him, and then displayed as required within the application. 

## Static UML: Habits
![](https://github.com/simon-wh/66-Days/blob/master/Documentation/Development/UML%20Diagrams/Habits.png?raw=true)

The habit tracking system is one of the key aspects of the 66-Days system, being one of the two core systems that the user will interact with, at least for the MVP. This system serves as a core centre-point that the other systems will interact with so it was crucial to ensure this was designed as a baseline to work off of for the other systems, or at least to have an idea of how aspects will interact with it. The habit system is used for the user to keep track of the various CoreHabits, what experiment is being tracked(See CheckTitle and CheckDescription under CoreHabit) and to store when the experiments were marked off. The `HabitManager` also serves to handle the notifications that have been chosen by the user for particular habits and ensure that these notifications are pushed to the user at the selected times. There is also the simple visualisation interface which will be used to have multiple implementations of data visualisers which display a representation of the historical data for the habits being checked off over time. The core benefit we experienced from modelling this system was that we were able to find a much simpler design than we had originally planned, we had a couple of iterations of the design which all contrast with each other. For example, at first we planned for the CoreHabit class to be split into an abstract habit class to act as a blueprint for habits called `HabitBase`, and then two subclasses that inherit this for instantiation, namely `CoreHabit` and `Habit`. Upon review of this we realised that this is actually more than we needed and it would overcomplicate our system, and hence we went back and combined elements of all three of these classes, into one class, now called `CoreHabit`  With the resulting design being much more refined and simple, focusing on the core requirements of the system and should be easier to implement with regards to the wider system.

## Dynamic UML: User interaction with the Library

![](https://github.com/simon-wh/66-Days/blob/master/Portfolio%20A/Images/Dynamic%20Library%20UML.png?raw=true)

The above Dynamic UML portrays the the week-post display process. 

1. The user clicks on **Library** which opens the **Library** **screen**. The **Library** **screen** needs to display all the weeks in minimised state.
2. The **Library** **Screen** gets the week structure from the **Library** class.
3.  The **Library** class then communicates with the **Server** and gets the week-post indexes (the raw data) to be displayed.
4. The **Library** process the raw data received by the **Server** and then displays it to the **Library** **Screen**.
5. The **Library** **Screen** displays the week structure and then gets the post structure (object instances) of all the post within all the weeks from **Week** class.
6. The **Library** **Screen** generates the required widgets and displays the *Week-Post Structure* to the **User**.
7. When the **User** clicks on the individual post on the **Library** **Screen** he needs to be redirected to the Post page.
8. The **Library** **Screen** calls the **Post** class which communicates with the **Server** to get the post data. After getting the required widgets **Library** **Screen** displays it to the **User**.

The **Motivation** behind designing this Dynamic UML is to display the contents of posts to the user in the most simple and efficient manner. Also Knowing when to communicate with the server to extract data.

**Reflection** - this UML really simplifies the display process by breaking it down and makes implementation much easier.