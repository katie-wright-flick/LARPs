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

## Checkingg out the Scenario table

The Scenario table has been created for you already. Ensure you have completed the start up instructions and then start your rails server and visit localhost:3000 in your browser.

You should see the default rails welcome message. This isn't very exciting, and if a scenario table exists, where can we see that?

Have a read of chapters 1 to 2.2 of [routing outside in](https://guides.rubyonrails.org/routing.html). Bear in mind that available routes live in `routes.rb`, and our model / controller is for `Scenario`.

Before moving on:
1. Having the landing page be the default ruby landing page isn't useful for a production app. We can make the scenario page our homepage, or our "root" route. Have a read of [routing outside in #using-root](https://guides.rubyonrails.org/routing.html#using-root) and make the necessary changes to the `routes.rb`.

---
## Create the Character table


We're going to be using the `generate` command line command, so please read this section [in the rails guides first](https://guides.rubyonrails.org/command_line.html#bin-rails-generate). We'll be using a scaffold in this challenge, so make sure you check out that section.

This time you will create your first table via the command line. The Character table will have columns called `name` and `job`

```
bundle exec rails generate scaffold Character name:string job:string
bundle exec rails db:migrate RAILS_ENV=development
```

---
## Create the Items table

We are next going to create an items table, but this time we will not be using the scaffold command. As you probably noticed in the previous challenge, a lot of files are created that we don't actually need. Scaffolding also hides a bunch of ruby on rails magic, which is important for you to understand.

Create the new Items table:
```
bundle exec rails g migration CreateItems
```

This time you can expect only to see a new migration in your `db/` file. This will be empty except for a timestamp for now.

Looking at the previous migrations for `Scenario` and `Character`, add columns for `name`, `description`, `quantity` and `published`. Have a go at what you think the types will be for this columns, we can edit them later.

When you're finished, make sure to run your migration

```
bundle exec rails db:migrate RAILS_ENV=development
```

https://guides.rubyonrails.org/active_record_migrations.html

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