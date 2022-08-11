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

# create the database and run migrations
bundle exec rails db:create db:migrate

# Run the server
bundle exec rails s
```
---

### Challenges

- [Create the Scenario Table](#create-the-scenario-table)
- [Create the Character Table](#create-the-character-table)
- [Create the Items Table](#create-the-items-table)
- [Update the Scenario Table to contain Characters and Items](#update-the-scenario-table-to-contain-characters-and-items)
- [Update the Characters Table to allow characters to have Friends](#update-the-characters-table-to-allow-characters-to-have-friends)
- [Update the Characters Table to allow characters to have Enemies](#update-the-characters-table-to-allow-characters-to-have-enemies)

## Create the Scenario table
The Scenario table has been created for you already. 
## Create the Character table
## Create the Items table
## Update the Scenario Table to contain Characters and Items
## Update the Characters Table to allow characters to have Friends
Characters have relationships with one another; have a read through the rails association basics before starting this challenge: [https://guides.rubyonrails.org/association_basics.html](https://guides.rubyonrails.org/association_basics.html).


## Update the Characters Table to allow characters to have Enemies