class Inquiry
	extend ActiveModel::Naming
	include ActiveModel::Conversion
	include ActiveModel::Validations
	include ActionView::Helpers::TextHelper

	attr_accessor :name, :email, :content, :nickname

	validates :name, :presence => true

	validates :email, :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }

	validates :content, :length => { :minimum => 10, :maximum => 1000 }

	validates :nickname, :format => { :with => /^$/ }

	def initialize(attributes = {})
		attributes.each do |name, value|
			send("#{name}=", value)
		end		
	end
	
	def deliver
		return false unless valid?
		true
		Pony.mail({
			:from => %("#{name}" <#{email}>),
			:reply_to => email,
			:subject => "Let's Network!",
			:body => content,
			:html_body => simple_format(content)
			})
	end

	def persisted?
		false
	end
end