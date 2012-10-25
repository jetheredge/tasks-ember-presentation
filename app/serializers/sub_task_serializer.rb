class SubTaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :done, :task_id
end
