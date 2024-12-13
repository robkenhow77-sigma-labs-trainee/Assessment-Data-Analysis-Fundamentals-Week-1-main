# Marine Experiments API

## Scenario

You've been hired as a contractor by a government agency that must (for security reasons) remain nameless. Their current focus is on training marine animals to complete tasks and (eventually) engage in underwater combat. With sea levels rising all over the world, the battles of the future will be fought beneath the waves.

The agency already has a database to store details of their experiments, but it's currently harder to access than they would like. Ideally, there would be an easy-to-use, consistent API that allowed easy communication with the database. Although there has been some work on the API, it is only **half-finished** (the last developer disappeared mysteriously while on a yachting holiday).

Get set up with the project, and then **work through the tasks** listed below, adding key functionality to the API.

## Setup and installation

1. Run `psql postgres -f northwind.sql` to create and populate the Northwind database
database.

## Tasks

The `./queries` folder contains a series of `.sql` files. Each one has comments describing a specific query; your task is to fill in the SQL of each query.

Each query file should produce the data described when run using the command `psql northwind --csv -f ./queries/[name of file]`. You can check `./example-results` to see example output for each query.

At the end of the challenge, all tests should pass.

## Marking

This assessment is primarily marked based on passing tests, though coaches reserve the right to add/remove discretionary marks.
