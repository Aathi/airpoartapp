class Faq < ActiveRecord::Base
  attr_accessible :topic, :question, :answer
end
