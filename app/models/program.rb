class Program < ActiveRecord::Base

  def self.keyword(keyword)
  if keyword
    where('program_name LIKE ?', "%#{keyword}%")
  else
    all
  end
  end
  
  def self.age(age)
    if age.blank?
      all
    else
      where('min_age <= ?', age)
    end
  end

end