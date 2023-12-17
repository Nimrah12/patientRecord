# frozen_string_literal: true

class Patient < ApplicationRecord
  # This is the top level patient controller coment

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
