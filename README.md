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

This app uses rspec-rails for testing. 
To run an individual test;

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

The base application includes the hotwire-livereload gem to make development really really nice. When you run bin/dev the application is launched in development mode and live-reload is enabled. Anytime a change is made to a view, or stylesheet, or javascript whatever...the browser (if you have one loaded on localhost) will automatically refresh with the new changes. This is a tiny miricle...nay...a major miricle. 

Other enhancements include;
- tailwindcss_breakpoints_indicator 
  This is a simple rails partial that is included for all environments except production. It provides a visual indication of which tailwindcss breakpoint the browser is utilizing for a give size. This is useful as a quick reference when designing. By default it is also on for staging environments so that people who are testing or doing QA for the app will be able to provide more specific feedback. i.e; "On the landing page, the main image becomes destorted in at the medium breakpoint." It will also be available in any screen captures that the user sends from a non-production environment.
  located at: app/views/layouts/utilities/_tailwindcss_breakpoints.html.erb

- body tag has data-environment=#{Rails.env} attached. This allows us to apply different styling if the app is running in different environments. For example, we use the data-envrionment attribute to only display the missing_alt_tags outline if the code is running in development.
  
>## Accessability 
  - ### missing_alt_tags
    Images that do not have alt tags for accessability get highlighted in a garrish, but obvious way to call out that this is important to fix! < in development mode only>.

  - ### Skip-to-content-links

    We added a set_skip_links before action to the ApplicationController which creates a ```@set_links``` hash and sets the first element to the id of main and the link text to "Skip to main content".

    ```
      def set_skip_links
        @skip_links = {main: "Skip to main content"}
      end
    ```
    This default skip_to_content link is applied on every page to allow users to bypass the main navigation links and jump straight to the main content.

    ApplicationHelper has a skip_links method. This helper method is included in the application.html.haml template so it runs on each page. It generates a list of links separated the word 'or' (except for the last link) for each item in the @skip_links hash.

    ```
      # Creates skip to content links from an array of id names
      def skip_links
        sanitize @skip_links.collect { |skip_link| link_to "#{skip_link[1]}", "##{skip_link[0]}", class: "skip-to-content-link" }.join(" <span class='sr-only' > or </span>")
      end
    ```

    To add additional skip_to links on a specific page you need to update the @skip_links hash AND add the corresponding id's to the elements that you want users to be able to jump to.

    For example: on an index page that contains a list of filters that our users might want to skip in addition to the main navigation.

    Update the hash by pushing the additional elements into the @skip_links hash
    ```
    <%- @skip_links = { filters: "Filters", footer: "Footer"} %>
    ```
    And make sure there is a corresponding #filters and #footer id elements on the page.

    We added a ```.skip-to-content-link``` class in the main application.sass file to handle styling of the links. The styling utilizes tailwindcss utilities.

## Getting Started

Clone the repository
run bin/setup (rename the app)
run bin/dev 


