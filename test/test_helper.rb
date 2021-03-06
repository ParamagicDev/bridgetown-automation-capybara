# frozen_string_literal: true

require 'minitest'
require 'minitest/autorun'
require 'minitest/unit'
require 'mocha/minitest'
require 'rake'

LIB_NAME = 'bridgetown-automation-capybara'
require LIB_NAME

ROOT_DIR = File.expand_path('..', __dir__)

TEMPLATES_DIR = File.join(ROOT_DIR, 'templates')
TEST_DIR = File.expand_path(__dir__)
TEST_APP = File.expand_path('test_app')
TEST_GEMFILE = File.join(TEST_APP, 'Gemfile')
