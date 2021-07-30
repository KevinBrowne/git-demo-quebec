# coding : utf-8
# frozen_string_literal: true

require 'i18n'
require 'date'

I18n.load_path << Dir[File.expand_path("config/locales") + "/*.yml"]
I18n.default_locale = :en # (note that `en` is already the default!)

locale_file = File.join(File.dirname(__FILE__), './.locale')
if File.exist?(locale_file)
  I18n.locale = File.read(locale_file).strip
end

puts I18n.t('greeting')

def display_menu
  puts ''
  puts I18n.t('menu.title')
  puts ''
  puts "1. #{I18n.t('menu.options.display_date')}"
  puts "q. #{I18n.t('menu.options.quit')}"
  puts ''
  puts I18n.t('menu.prompt')
  STDIN.gets.chomp
end

def display_date
  puts ''
  puts '*****'
  puts I18n.l Date.today, format: :short
end

option = ''
while option != 'q' do
  option = display_menu
  if option == 'q'
    puts I18n.t('farewell')
  elsif option == '1'
    display_date
  else
    puts I18n.t('menu.invalid')
  end
end
