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

