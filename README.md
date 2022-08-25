# LARP

## What is LARP?

Live Action Role Playing (LARP) is an activity where participants improvise the roles of characters in a fictional situation.

Murder mystery evenings are an example of one type of LARP, and games where players fight with soft foam weapons are another. What they all have in common is taking on roles and physically playing them out without a script. Sometimes you write your own character to play, and other times you are given one ... There may be a lot of rules, or none. Some larps are one-off events, others are series of events in a continuous setting. LARPs can be in any genre, from historical to modern psychological thrillers to futuristic, and can involve any amount of social intrigue or physical action. Some are very small, with only a handful of people, and others have thousands of people.

---

## Getting Started

LARPs is a ruby on rails app. To get started:

1. Make a **fork** of this repo to work in, please do not edit the original project.

```bash
# install the gems used in LARPs
bundle install

# create the database and run existing migrations
bundle exec rails db:create db:migrate

# seed the database

bundle exec rails db:seed

# make a new migration
bundle exec rails g migration <migration-name>

# Run the server
bundle exec rails s
```

---

### Challenges

The aim of this project is to understand the basics of MVC, how rails works and how to interact with a database. It's really important that you read the documentation that has been linked in the README. No one will be reviewing or checking what your version of LARPs ultimately looks like, rather I care that you understand the concepts in this project, can put them into practise via the challenges, and figure out parts you don't understand so that we can work that out together.

Before you start each challenge, do a commit to ensure your git history is clear.

- [Create the Scenario Table](#create-the-scenario-table)
- [Create the Character Table](#create-the-character-table)
- [Create the Items Table](#create-the-items-table)
- [Update the Scenario Table to contain Characters and Items](#update-the-scenario-table-to-contain-characters-and-items)
- [Update the Characters Table to allow characters to have Friends](#update-the-characters-table-to-allow-characters-to-have-friends)
- [Update the Characters Table to allow characters to have Enemies](#update-the-characters-table-to-allow-characters-to-have-enemies)

## Checking out the Scenario table

The Scenario table has been created for you already. Ensure you have completed the start up instructions and then start your rails server and visit localhost:3000 in your browser.

You should see the default rails welcome message. This isn't very exciting, and if a scenario table exists, where can we see that?

Have a read of chapters 1 to 2.2 of [routing outside in](https://guides.rubyonrails.org/routing.html). Bear in mind that available routes live in `routes.rb`, and our model / controller is for `Scenario`.

Hit me up if you're stuck, but otherwise assuming you're on the scenario route...

You should be looking at a page called Scenarios that contains a table with a few entries.

Make sure you can answer the following before moving on:

1. Do a search in this code base for the name of these default table entries. How are they already on the page?
2. Click the link to create a new scenario and follow the steps, where do you end up in the browser?

- What is the name of the view you've landed at?
- What correlation do you see between the name of the view and the ScenarioController?
- Do you understand what `resources: scenario` is doing in the `routes.rb`

3. What happens when you delete a scenario?
4. What happens when you edit a scenario?
5. The scenarios that were on the page already had Ids of 1 and 2. You can see this by clicking on the 'show' link next to them, and having a look at the URL. If you deleted these two scenarios, and then reran `bundle exec rails db:seed`, what would the Ids of the new scenario instances be?

- If you ran `bundle exec rails db:drop` and then `bundle exec rails db:seed`, what would the Ids be?

Code challenge:

1. Having the landing page be the default ruby landing page isn't useful for a production app. We can make the scenario page our homepage, or our "root" route. Have a read of [routing outside in #using-root](https://guides.rubyonrails.org/routing.html#using-root) and make the necessary changes to the `routes.rb`.
1. Commit your work

---

## Create the Character table

We're going to be using the `generate` command line command, so please read this section [in the rails guides first](https://guides.rubyonrails.org/command_line.html#bin-rails-generate). We'll be using a **scaffold** in this challenge, so make sure you check out that section.

This time you will create your first table via the command line. The Character table will have columns called `name` and `job`.

```
bundle exec rails generate scaffold Character name:string job:string
bundle exec rails db:migrate RAILS_ENV=development
```

Can you answer these questions:

1. What do you think the `scaffold` command does?

Code Challenge:

1. You'll notice a whole heap of new files have been created. Is there anything you can delete?
1. Go and check out your new views in the browser. If you're not sure of what routes are available, you can run `bundle exec rails routes` to see all the routes that are currently in the project. [Read more about this command and how to read the results here](https://launchschool.com/books/demystifying_rails/read/routes_and_resources).
1. Create at least one character.
1. Commit your changes.

---

## Create the Items table

We are next going to create an items table, but this time we will not be using the scaffold command. As you probably noticed in the previous challenge, a lot of files are created that we don't actually need. Scaffolding also hides a bunch of ruby on rails magic, which is important for you to understand.

Create the new Items table:

```
bundle exec rails g migration CreateItems
```

This time you can expect only to see a new migration in your `db/` file. This will be empty except for a timestamp
for now.

---

### Challenge 1.

Looking at the previous migrations for `Scenario` and `Character`, add columns for `name`, `description`, `quantity` and `published`. Have a go at what you think the [types](https://guides.rubyonrails.org/v3.2/migrations.html#supported-types) will be for this columns, we can edit them later.

When you're finished, make sure to run your migration.

```
bundle exec rails db:migrate
```

If you do `git status` now, you should see only two files in your history.

- `db/migrate/...` which is the new file you created for your Items migration.
- `db/schema.rb` which contains [information about the structure of your database](https://edgeguides.rubyonrails.org/active_record_migrations.html#schema-dumping-and-you).

### Challenge 2

You'll notice that you're missing the oddles of files that were scaffolded for you in the previous challenges. If you go into the browser and try to hit the `/items` route, you'll get an error.

This is because the routing and configuration for this nnew record hasn't been created yet; you'll do this in Challenge 3.

For now, we're goinng to go into a rails console

```
bundle exec rails console
```

The rails console lets us interact with our rails application without the browser, and uses `irb`. This means that we can also use it as a space to test out ideas in ruby, e.g.

```ruby
[
  {name: "item 1", published: true},
  {name: "item 2", published: false}
].select{|item| item[:published]}
 # => {name: "item 1", published: true}
```

or add new entries to the database, which we'll do now.
In the console, let's first take a look at our Scenarios object (provide you haven't deleted all of your scenarios in the browser, if you had, rerun the seeds again):

```
Scenario.count
```

Notice that the record name is singular, and not plural. This is because we are asking how many individual instances we have of the class `Scenario`.

- Try and query how many `Characters` we have in the database.

- Try and query how many `Items` we have in the database.

I expect your Items query to have thrown an error. This is because we haven't yet created the class / model for `Item` yet. In the `/models` directory, create a new model for `Item`; this will mimick the `Scenario` model at this stage.

- Restart your console, and try to query the `Item` count again.

You wont get an error this time, but there are still no Items in the database. So let's create one

```
Item.create(
  {
    name: "My Item",
    description: "Desc",
    quantity: "7",
    published: false
  }
)

Item.count
# => 1
```

This is exactly the same code that ultimately runs in the controller `create` method. The values we pass to the model attributes are called `params`, and are passed to the controller `create` method via the `new` method.

So there are two ways to interact with the database

- via console
- via a form in the browser

### Resources to read or bookmark for later:

- [Rails migration docs](https://guides.rubyonrails.org/active_record_migrations.html)
- [Singular vs Plural naming](https://jdbrewerhofmann.medium.com/when-to-pluralize-in-rails-180db6eb2661)

Can you answer these questions:

1. What is the difference between `scaffold` and `migration`?

---

## Update the Character table to have a column called creature_class

We are going to add a new column to the Character table called creature_class, which will have a limited set of options.

```
bundle exec rails g migration AddCreatureClassToCharacter
```

This time when you look at the migration, notice that the method nested inside the `def change` is `add_column :characters` instead of `create_table`. Rails has a bunch of magic happening around naming, which is why it's important to name your migrations thoughtfully.

Have a read [of this article regarding adding an enum](https://betterprogramming.pub/how-to-use-enums-in-rails-6-87600e292476#:~:text=In%20Ruby%20on%20Rails%2C%20an,for%20enums%20in%20Rails%204.1.) and make sure you understand what an enum is.

The `creature_class` enum should contain a range of creatures including: human, elf, orc, ent, wizard.

Once you have finished adding your new column, run your migrations and check the browser

```
bundle exec rails db:migrate RAILS_ENV=development
```

---

## Update the Scenario Table to contain Characters and Items

---

## Update the Characters Table to allow characters to have Friends

Characters have relationships with one another; have a read through the rails association basics before starting this challenge: [https://guides.rubyonrails.org/association_basics.html](https://guides.rubyonrails.org/association_basics.html).

## Update the Characters Table to allow characters to have Enemies
