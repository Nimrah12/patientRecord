# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  # This is the top level patient controller coment

  default from: 'from@example.com'
  layout 'mailer'
end
