# ShopManager
Simple and easy to use automotive repair facility management software

[Demo](https://shop-manager.nblappserve.net/)

## High Level Details
* Uses Rails
* Uses Devise for user authentication
* Twitter Bootstrap for styling
* Simple_Calendar for schedule display


## Entities and Relationships
![Imgur](http://i.imgur.com/qKZxJbe.png)

* Users: Users are the administrators of the system. Users roles can be varied
  depending on what their job title is. You may have "Service Advisors" as well
as "Technicians" and "Parts Advisors". There is also a user role that can manage
all aspects of the application

* Customer: Customers in the system represent the owners of the vehicles you are
  repairing. They are tied into vehicle ownership, repair orders, and even
individual line items. You may get tallies about aggregates via the customer
relationship with work orders

* Vehicle: Vehicles in the system represent the physical vehicles that you are
  repairing. Information about the VIN and mileage are stored along with model
year and manufacturer. Repair history can be queried through the relationship
with work orders and repairs

* Work Order: A work order is an electronic record that contains information
  about a given vehicle on a given day and what repairs it required. Work Orders
have a single customer and a single vehicle, though can have many repairs listed
on them.

* Repair: A repair in our system is a representation of a job being done to the
  car, such as "replace right rear tire" or "diagnose check engine light".
Information regarding the total time to bill for is based on an aggregate of
repairs on a single work order

## Sample User Story
*Scenario* Bob is a service advisor. Sue calls Bob and needs to get a tire put
on her 2002 Honda Civic

While on the phone with Sue, Bob asks her for some personal information such as
her phone number and address. He is able to quickly create a new customer record
for Sue.

He jots down a note about the nature of her visit, and some year model
information about her car.

After saving the appointment, Bob now has a spot on his calendar automatically
marked for Sue.

On the day that Sue arrives for her tire, Bob is able to quickly fill out a work
order by obtaining the VIN number of Sue's Honda. He is then able to add a
repair item to the work order that states she needs a  tire put on, and gives it
a book time of 5 FRUs.

The ticket is dispatched to a technician where the repairs are made.

Upon completion, Bob is notified through the app that Sue's car is awaiting
approval and delivery.

Bob is able to review the work order, assess the notes on the repairs, and then
easily inform Sue that her car is ready to be picked up.

Upon arrival, Sue receives her car keys and a printed copy of the work order
made for her Honda earlier.

## Screenshots

![Home](http://imgur.com/JSc7enb.png)
Landing Page (not signed in)

![Sign In](http://imgur.com/YDw8QlJ.png)
Sign Up/Sign In Page

![Schedule](http://imgur.com/rpn8Cnt.png)
Schedule Page, landing page if you are logged in

![Vehicles](http://imgur.com/vikT3cV.png)
Vehicles listings

![Vehicle](http://imgur.com/y7bmnWz.png)
Vehicle Show page (with Appointment form)

![Customer](http://imgur.com/SPug6ke.png)
Customer Show page

## Cool Features
Simple_Calendar: Simple calendar is a really cool rails gem that will take a
collection of data and render it into an events calendar. It has options for
weekly and monthly views, with many other customizations.

## TODO
Lots. I'd really like to actually get nested forms working right, so that I can
populate a whole repair order with repairs at one time.

I would also like to have a PDF print capability for repair orders and receipts.

And a nice to have feature might be using a service like Twillio to notify
customers that their car is done.
