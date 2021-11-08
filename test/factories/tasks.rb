FactoryBot.define do
  factory :task do
    name { :task_name }
    description { :task_description }
    author_id { 1 }
    assignee_id { 1 }
    state { 'new_task' }
    expired_at { Date.current + 10 }
  end
end
