ONES = {
  1=>'one', 2=>'two', 3=>'three', 4=>'four', 5=>'five',
  6=>'six', 7=>'seven', 8=>'eight', 9=>'nine'
}

TEENS = {
  11=>'eleven', 12=>'twelve', 13=>'thirteen', 14=>'forteen', 15=>'fifteen',
  16=>'sixteen', 17=>'seventeen', 18=>'eighteen', 19=>'nineteen'
}

TENS = {
  10=>'ten', 20=>'twenty', 30=>'thirty', 40=>'forty', 50=>'fifty',
  60=>'sixty', 70=>'seventy', 80=>'eighty', 90=>'ninty'
}

MAGNITUDES10 = {
  100=>'hundred', 1000=>'thousand', 1E6.to_i=>'million', 
  1E9.to_i=>'billion', 1E12.to_i=>'trillion'
}

class Integer
  def to_w
    case self
    when 0
      return ''
    when 1...10
      return ONES[self]
    when 10
      return TENS[self]
    when 11..19
      return TEENS[self]
    when 20..99
      text_number = "#{TENS[self.floor(-1)]}" 
      text_number += " #{ONES[self%10]}" if self%10 != 0
      return text_number
    else
      # First power of ten greater or equal our number:
      max_magnitude = MAGNITUDES10.keys.sort {|x,y| y <=> x}.find {|x| x <= self}

      text_number = "#{(self/max_magnitude).to_w} #{MAGNITUDES10[max_magnitude]}"
      text_number += " #{(self%max_magnitude).to_w}" if self%max_magnitude != 0
      return text_number
    end
  end
end
