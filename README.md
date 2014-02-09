# capistrano-direnv

Adds direnv support when executing commands with capistrano. It automatically adds
`direnv exec ...` prefix to all commands executed by capistrano.

## Installation

Add `capistrano-direnv` to `Gemfile`:

```ruby
group :development do
  gem 'capistrano-direnv'
end
```

At least `direnv >= 2.3.0` must be installed. 

## Usage

Add the following line to your `Capfile`:

```ruby
require 'capistrano/direnv'
```

You should also manually allow .envrc file:

```bash
cd /path/to/envrc
direnv allow
```

## Configuration

Defaults:

```ruby
set :direnv_map_bins, %w{rake ruby bundle} # list of executables which should be preceded with direnv prefix
set :direnv_path, 'direnv'                 # path to direnv executable
set :envrc_path, shared_path               # path where .envrc file is stored
```
