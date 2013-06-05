class Task < ActiveRecord::Base
  attr_accessible :body, :string, :title
end
