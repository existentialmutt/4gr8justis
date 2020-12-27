# README

This is a silly little app I use to monitor micro-budget progress for small tasks.  It works by pulling the last 6 months of your data from Harvest and scanning for hashtags in the notes.  You get a list of hashtags with total hours spent on each, and can set budgets for individual tags.

Single-user mode only, it's intended to be run locally in development mode.  Set up a Personal Access Token at https://id.getharvest.com/developers and add `HARVEST_ACCESS_TOKEN` and `HARVEST_ACCOUNT_ID` to `.env.local`.  Then spin up a server with `rails s` and navigate to http://localhost:3000