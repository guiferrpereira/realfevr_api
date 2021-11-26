module DateUtils
  # Given an date as string, returns the age
  def self.age(date)
    dob = date.to_date
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
end
