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
  100=>'hundred', 1000=>'thousand', 10E6.to_i=>'million', 
  10E9.to_i=>'billion', 10E12.to_i=>'trillion'
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
    when 100..999
      text_number = "#{ONES[self/100]} hundred"
      text_number += " #{(self%100).to_w}" if self%100 != 0
      return text_number
    end
  end
end
