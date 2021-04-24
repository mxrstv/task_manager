FactoryBot.define do
  factory :task do
    name
    description
    author factory: :manager
    assignee factory: :developer
    state
    expired_at { Date.today + rand(1..31).days }
  end
end
