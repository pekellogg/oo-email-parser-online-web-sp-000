# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_reader :parse

    def initialize(emails_str)
        @emails_str = emails_str
    end

    def parse
        split_emails_arr = @emails_str.split(", ") #(/[, ]/) 
        remove_empty_strs = split_emails_arr.delete_if { |i| i == "" }
        unique_emails_arr = remove_empty_strs.uniq
    end

    # def parse
    #     emails.split(/, | /).uniq
    # end

end