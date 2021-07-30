# coding : utf-8
# frozen_string_literal: true

require 'i18n'

I18n.load_path << Dir[File.expand_path("config/locales") + "/*.yml"]
I18n.default_locale = :en # (note that `en` is already the default!)

puts I18n.t('greeting')
