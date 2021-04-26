FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :avatar, :name, :description, :state] do |n|
    "string#{n}"
  end

  sequence :email do |n|
    "user#{n}@example.com"
  end
end
