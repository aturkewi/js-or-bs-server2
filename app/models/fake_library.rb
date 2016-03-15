class FakeLibrary < ActiveRecord::Base
  after_initialize :add_name

  def add_name
    self.name=Faker::Hipster.words(1,false,true)[0].split(" ").map(&:capitalize).join(" ") + extra_js
  end

  def extra_js
    rand > 0.75 ? ".js" : ""
  end

end
