# Neighbors

## Local Development Setup

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
