class FakeLibrary < ActiveRecord::Base
  after_initialize :add_name

  def add_name
    self.name=Faker::Hipster.words(1,false,true)[0]
  end

end
