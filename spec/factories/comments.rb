FactoryBot.define do
  factory :comment do
    user_id {1}
    object_id {1}
    object_type {"Guide"}
  end
end
