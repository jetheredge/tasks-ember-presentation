class SubTask < ActiveRecord::Base
  attr_accessible :done, :name
  belongs_to :task
end
