class Test < ActiveRecord::Base
  belongs_to :quiz
  has_many :test_answers, :dependent => :destroy
  accepts_nested_attributes_for :test_answers, :reject_if => lambda { |a| a[:option].blank? }, :allow_destroy => true
end
