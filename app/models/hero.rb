# frozen_string_literal: true

class Hero < ApplicationRecord
  belongs_to :user,
             foreign_key: 'user_id'
end
