# project4-backend
fishingwithmission backend

Fishing with a Mission is a single page, full stack web app to support an annual one day vharity event that takes autistic kids and caregivers out fishing for a day.  The event is used to raise autism awareness and funding boston higashi school, a school serving autistic children from around the world..  The objectives of the web app are to allow event participants to register for the event, get additional info, and allow the event coordinator to view and manage the people (participants, volunteers, sponsors) and resources (teams and boats).

There is already a website (mylittlebuddysboat) that provides the charity event description and awareness.  The vision is this application would link toand provide back end processing for that web site.

The Server side of this website was built on ruby and rails.  It provides 3 data models(boats, teams, and participants).  Participants is a join table for the other 2 tables and is to each with a foreign key.

There is also a user model that is used for authentication but is not linked to the other tables.

There are routes and controllers for all three.

The controller for each allows for creation, reads (single records and all records), upadtes and destruction from each and any model.

The searches allow users to get info based on a number of fields.  At this time valiidations are not being performed although some will be added in the next phase.

Multiple table queries and/or serialization will also be added in the next phase.

The front end of this web app is hosted on gh-pages on github at https://github.com/bbarbersox/project4-frontend.git

The back end of this web app is hosted on heroku at https://morning-reaches-9856.herokuapp.com/

The website backend is also in github at https://github.com/bbarbersox/project4-backend.git

And finally the backend readme file is located at https://github.com/bbarbersox/project4-frontend/blob/gh-pages/README.md
