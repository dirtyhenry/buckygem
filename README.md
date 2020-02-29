# Buckygem

[![Build Status](https://travis-ci.org/Bootstragram/buckygem.svg?branch=master)](https://travis-ci.org/Bootstragram/buckygem)

A gem for random ruby utilities.

## Installation

Add this line to your application's Gemfile:

    gem 'buckygem'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install buckygem

## Usage

### Scan a directory to find images

To get an `Array` of the absolute paths of images contained in folder with the relative path `foo`:

    images_collection = Buckygem::ImagesCollection.new("foo")
    images_collection.images

### Get image metadata in a LESS format

To get dimensions of an image located at the relative path `foo.png`:

    image_metadata = Buckygem::ImageMetadata.new("foo.png")
    image_metadata.absolute_path   # /bar/.../foo.png
    image_metadata.name            # foo
    image_metadata.width           # 640
    image_metadata.height          # 480

`image_metadata.to_less` will return a `String` containing the following:

    @foo_width: 640px;
    @foo_height: 480px;


### Apply ImageMagick's convert to a folder

To apply ImageMagick's `convert` command line tool to every image in folder `source` and store
copies respecting the same arboresence in `target`, use:

    image_folder_converter = Buckygem::ImageFolderConverter.new
    image_folder_converter.convert 'source' 'target' '-scale 25%'

### Liquid `i18n_date` filter

Usage:

    {{ my_date | i18n_date: 'default', 'en' }} # 'June 20, 2015'
    {{ my_date | i18n_date: 'default', 'fr' }} # '20 juin 2015'

## Contributing

1. Fork it ( https://github.com/Bootstragram/buckygem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

[MIT](https://choosealicense.com/licenses/mit/)
