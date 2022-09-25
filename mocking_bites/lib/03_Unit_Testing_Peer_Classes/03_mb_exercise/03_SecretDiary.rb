# File: lib/secret_diary.rb

class SecretDiary
  def initialize(diary) # diary is an instance of Diary
  @diary = diary
    @secret_diary = []
    @secret_diary << @diary
    @locked = true
  end

  def read
    if @locked == true
      fail "Go away!"
    else
      return @secret_diary
    end
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end