# Neighbors

## Local Development Setup

This guide assumes that you have Ruby 2.5.1, Postgres, Git, and Bundler installed.

Clone the repository:

```console
git clone git@github.com:tylerklose/neighbors.git
```

Then jump into the local copy of the repository:

```console
cd neighbors
```

And let bundler handle the dependencies:

```console
bundle install
```

Next you will need to setup the database:

```console
rails db:create
rails db:schema:load
rails db:seed
```

Confirm you can access the Rails console:

```console
rails c
```

Then at the console, confirm you can access the database programmatically:

```console
Relationship.first
exit
```

Now you're ready to get the server up and running.

```console
rails s thin
```

## Testing

### Local Testing

To get the test DB ready:

```console
rails db:test:prepare
```

Only run `bundle exec rails db:test:prepare` if you need to sync the database schema for the test database to what you have for dev/prod

To get start up guard for monitoring and run through the suite of automated tests:

```console
guard
[enter]
```

## Exercise Requirements

```
You will create new family, edit/delete existing family.

When you open the app, you will see a list of families that you've created, ordered by the last name of the primary family member.  Then he can click on any family to see the details of that family.

A family is made up of one primary member and multiple additional family members.  Need to limit the number of additional family members to <= 9.

A family must contain at least the following information:
	1. Home address
	2. Email address
	3. Phone number

The primary family member must have the following data points:
	1. Name
	2. Age, must be >= 21 to be the primary member

Additional family member must have the following data points:
	1. Name
	2. Age
	3. Relationship to Primary family member
		1. Spouse
		2. Parent
		3. Child
		4. Sibling
		5. Other
	4. Working or not? Asked only if age is >= 14 because younger than 14 are not allowed to work.


Tech stack:
- Ruby on Rails (any version)
- PostgreSQL (any version)
- Front-end (any framework/library/engine...)
- This can be done as a Javascript SPA with Rails API or a traditional Rails application
```
