class User < ApplicationRecord
  validates_presence_of :firstname, :surname, :grad_year, :email
  validates_numericality_of :grad_year,
                            greater_than_or_equal_to: 1970,
                            less_than_or_equal_to: Time.now.year.to_i
  validates_format_of :email,
                      with: /\A([\w\.\-\+]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                      message: 'Bad email address format'

  def firstname=(value)
    write_attribute :firstname, (value ? value.humanize : nil)
  end

  def surname=(value)
    write_attribute :surname, (value ? value.humanize : nil)
  end

  self.per_page = 8

end
