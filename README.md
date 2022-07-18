# README

This README would normally document whatever steps are necessary to get the
application up and running.

This app uses rspec-rails for testing. 

## Getting Started

clone the repository to your development machine 
```
$ git clone git@github.com:dschmura/we_are_wads.git
```
```
$ cd we_are_wads 
$ bin/setup
$ bin/dev
```


The base application includes the hotwire-livereload gem to make development really really nice. When you run bin/dev the application is launched in development mode and live-reload is enabled. Anytime a change is made to a view, or stylesheet, or javascript whatever...the browser (if you have one loaded on localhost) will automatically refresh with the new changes. This is a tiny miricle...nay...a major miricle. 

Other enhancements include;
- tailwindcss_breakpoints_indicator 
  This is a simple rails partial that is included for all environments except production. It provides a visual indication of which tailwindcss breakpoint the browser is utilizing for a give size. This is useful as a quick reference when designing. By default it is also on for staging environments so that people who are testing or doing QA for the app will be able to provide more specific feedback. i.e; "On the landing page, the main image becomes destorted in at the medium breakpoint." It will also be available in any screen captures that the user sends from a non-production environment.
  located at: app/views/layouts/utilities/_tailwindcss_breakpoints.html.erb

- body tag has data-environment=#{Rails.env} attached. This allows us to apply different styling if the app is running in different environments. For example, we use the data-envrionment attribute to only display the missing_alt_tags outline if the code is running in development.

- accessability enhancements
  - missing_alt_tags: Images that do not have alt tags for accessability get highlighted in a garrish, but obvious way to call out that this is important to fix! < in development only>.
  
