class String

  # Return a formatted header
  # 
  # Params: 
  #   +horizontal_char+:: character used horizontaly, default: "*" 
  #   +vertical_char+:: character used verticaly, default: "*"
  #   +marging+:: marging used to print the header, default: 4, 
  #     if given value is < 2, marging become 2
  def to_header(horizontal_char="*", vertical_char="*", marging=4)
    marging      = 2 if marging < 2
    total_length = self.length + marging
    header_star  = "#{horizontal_char*total_length}"
    header = header_star + "\n" +
             vertical_char + self.center(total_length-2) + vertical_char + "\n" +
             header_star
    return header
  end

end
