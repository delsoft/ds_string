
class String
  
  def to_underscore
    self.gsub!(/(.)([A-Z])/,'\1_\2').downcase!
  end
   
  # Extending a String class with a method to convert a string in a boolean value. 
  # Possibles case insensitive values are 'Yes','Y', 'No', 'N', '1', '0', 'true', 'false'
  #   "1".to_bool == true
  #   "y".to_bool == true
  #   "No".to_bool == true
  def to_bool
    return true if self == true || self =~ (/(true|t|yes|y|1)$/i)
    return false if self == false || self == '' || self == nil || self =~ (/(false|f|no|n|0)$/i)
    raise ArgumentError.new("invalid value for Boolean: \"#{self}\"")
  end

  # Extending a String class with method that repeat the string _n_ times.
  # *simple case:*
  #  "a".times 2 
  #  => "aa"
  #
  # *complex case:*
  #    j = 0
  #    'A'.times 3 do |original_str, accumulative_str| 
  #      j += 1 
  #      "#{original_str}#{j}. "      
  #    end
  #   => 'A1. A2. A3. '
  def times num
    ret = ''
    num.times do 
      if block_given?
        tmp = ret if ret != ''
        ret += yield(self, tmp) 
      else
        ret += self 
      end
    end
    ret
  end
  
  def for_debug 
    "\n#{'+'.times 8}>\n#{self}#{'-'.times 8}>\n"
  end

end
