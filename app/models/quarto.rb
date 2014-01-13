class Quarto < ActiveRecord::Base
 	attr_accessible :numero, :pessoas, :tem_tv, :tem_ar
	validates :numero, presence: true
end
