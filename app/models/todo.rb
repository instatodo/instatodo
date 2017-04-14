class Todo < ApplicationRecord
  default_scope { order(created_at: :asc) }
  belongs_to :todo_list
  attr_accessor :user_editing
end
