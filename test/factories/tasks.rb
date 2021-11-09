FactoryBot.define do
  factory :task do
    name { :task_name }
    description { :task_description }
    author { create :manager }
    assignee { create :developer }
    state { 'new_task' }
    expired_at { Date.current + 10 }
  end
end
