# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

The base application includes the hotwire-livereload gem to make development really really nice. When you run bin/dev the application is launched in development mode and live-reload is enabled. Anytime a change is made to a view, or stylesheet, or javascript whatever...the browser (if you have one loaded on localhost) will automatically refresh with the new changes. This is a tiny miricle...nay...a major miricle. 

Other enhancements include;
- tailwindcss_breakpoints_indicator 
  This is a simple rails partial that is included for all environments except production. It provides a visual indication of which tailwindcss breakpoint the browser is utilizing for a give size. This is useful as a quick reference when designing. By default it is also on for staging environments so that people who are testing or doing QA for the app will be able to provide more specific feedback. i.e; "On the landing page, the main image becomes destorted in at the medium breakpoint." It will also be available in any screen captures that the user sends from a non-production environment.
  located at: app/views/layouts/utilities/_tailwindcss_breakpoints.html.erb

## Getting Started

Clone the repository
run bin/setup (rename the app)
run bin/dev 

* ...
