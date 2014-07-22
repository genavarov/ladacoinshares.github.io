# Dogeparty

## Development

### Install dependencies

    # Install gems
    bundle install

    # Install bourbon for non-rails project
    bourbon install --path=_sass

    # Watch for changes to sass files
    sass --watch _sass:assets/stylesheets

    # Make jekyll watch it too
    jekyll serve --watch

    # Convert haml files to htmls after each change (manually)
    haml _haml/index.haml > index.html

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request to our master branch

Or read the details about [Contributing to Open Source on GitHub](https://guides.github.com/activities/contributing-to-open-source/index.html).

