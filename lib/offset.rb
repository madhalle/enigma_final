class Offset
  # attr_reader :date
  # def initialize
  #   @date = date
  # end
  def date
    Time.now.strftime("%d%m%y")
  end

end
