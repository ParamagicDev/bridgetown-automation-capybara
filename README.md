# WARNING

## THIS IS STILL A WORK IN PROGRESS

## Prerequisites

- Ruby >= 2.5
- Bridgetown ~> 0.15.0

```bash
bridgetown -v
# => bridgetown 0.15.0.beta3 "Overlook"
```

This project requires the new `apply` command introduced in Bridgetown
`0.15.0`

## Usage

### New project

```bash
bridgetown new <newsite> --apply="https://github.com/ParamagicDev/bridgetown-automation-capybara"
```

### Existing Project

```bash
bridgetown apply https://github.com/ParamagicDev/bridgetown-automation-capybara
```

## Adding tests to a Bridgetown project

Tests are located in the `capybara/integration` file. Checkout [Cypress](capybara.io)
for further documentation on adding Cypress tests.

## Reference Repository

A new project which applies this `automation` will look like the following repository:

[https://github.com/ParamagicDev/bridgetown-example-capybara](https://github.com/ParamagicDev/bridgetown-example-capybara)

## Testing the "apply" command

Right now there is one big integration test which simply
checks that the files were created for Cypress in a new bridgetown project.

In order for the tests to pass, you must first push the branch you're working on and then
wait for Github to update the raw file so the remote automation test will pass

```bash
git clone https://github.com/ParamagicDev/bridgetown-automation-capybara/
cd bridgetown-automation-capybara
bundle install
bundle exec rake test
```

### Testing with Docker

```bash
git clone https://github.com/ParamagicDev/bridgetown-automation-capybara
cd bridgetown-automation-capybara
./compose.sh up --build
```
