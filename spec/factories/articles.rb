FactoryBot.define do
  factory :article do
    user_id {1}
    title {"a"}
    body {"b"}
  #  pictures { Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/dis.png'), 'image/png')}
  #need create in confing/init/carrierwave.rb
  end
end
