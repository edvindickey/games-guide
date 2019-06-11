FactoryBot.define do
  factory :guide do
    title {"a"}
    hero {"b"}
    text {"c"}
  #  pictures { Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/dis.png'), 'image/png')}
  #need create in confing/init/carrierwave.rb
  end
end
