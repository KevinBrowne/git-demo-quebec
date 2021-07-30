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

puts I18n.l Date.today, format: :short
