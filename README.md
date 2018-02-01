# **Meal[Maker] API v.1**
# **ReadME**

Thank you for checking out **Meal[Maker]**!

Custom front-end client can be found here:
https://github.com/wbounas/meal-maker-client

Deployed Client:
https://wbounas.github.io/meal-maker-client

Deployed API:
https://meal-maker-api.herokuapp.com/

**Technologies Used:**
Ruby on Rails, Ruby, PostgreSQL, Heroku, cURL

### **About**

The Meal[Maker] API was created to utilize a SQL database that was able to interact with a front-end client application. In the planning stages, once I was finished with my user stories I mapped out an ERD to visualize the relationships between the tbales in the database. This API was written using Ruby on Rails.

Meal[Maker] allows a user to have ingredients that they can create, retrieve, update, or destroy at their whim. With the limited amount of time presented to us, I focused on achieving the tech requirements for the project instead of moving onto the next version. In later iterations, I would like to add a second user-owned resource, `meals`, that would have a relationship with `ingredients` through a join table. I was very impressed with the wide-range of both customization and functionality that Rails provides for many different types of projects.

### **API End-Points**

| HTTP Verb | URI Pattern         | Controller#Action |
|--------|------------------------|-------------------|
| post   | `/sign-up`             | `User#signup`    |
| post   | `/sign-in`             | `User#signin`    |
| delete | `/sign-out/:id`        | `User#signout`   |
| patch  | `/change-password/:id` | `User#changepw`  |
| post   | `/ingredients`         | `Ingredient#create`  |
| get    | `/ingredients/`        | `Ingredient#index` |
| get    | `/ingredients/:id`     | `Ingredient#show` |
| delete | `/ingredients/:id`     | `Ingredient#destroy` |
| patch  | `/ingredients/:id`     | `Ingredient#update` |


### **Planned Future Versions**

In the next iterations of this app, I plan to add another user-owned resource (meals), and establish a many-to-many relationship between ingredients and meals through a join table. Then, I would create a way for the user to add ingredients to a meal that don’t exist in their fridge, and add them to a separate “Grocery List” so the user can keep track of what they’ll need to create the perfect meal. That way, the functionality of my vision for the app will be realized!


### **Entity Relationship Diagram**

![Image of ERD](https://i.imgur.com/DtvZBUe.png)
