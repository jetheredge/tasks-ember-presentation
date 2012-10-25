class TaskSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :done
  has_many :sub_tasks
end
