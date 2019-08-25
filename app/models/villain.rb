# frozen_string_literal: true

class Villain < ApplicationRecord
  belongs_to :user,
             foreign_key: 'user_id'
end
