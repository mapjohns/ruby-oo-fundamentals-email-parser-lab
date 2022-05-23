# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    attr_accessor :emails
    def initialize(emails)
        @emails = emails
    end

    def parse
        new_array = []
        test1 = emails.scan(/(\w*@\w*.com)/)
        test1.each do |email|
            new_array << email.join
        end
        new_array.uniq
    end
end