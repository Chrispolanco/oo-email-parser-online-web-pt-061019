require "pry"
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser  
  attr_accessor :email, :csv_emails

  def initialize(csv_emails)
    @csv_emails = csv_emails 
  end 
  
  def parse 
    array = []
    csv_emails.split(/[,\s]+/).each do |csv_email|
      array << csv_email
    end 
  array.flatten.uniq  
  end 

end 