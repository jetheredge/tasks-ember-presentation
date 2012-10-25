class Task < ActiveRecord::Base
  attr_accessible :done, :name
  has_many :sub_tasks, dependent: :destroy
  accepts_nested_attributes_for :sub_tasks
end
