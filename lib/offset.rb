class Offset
  attr_reader :offset_date, :offsets
  def initialize
    @offset_date = offset_date
    @offsets = Hash.new
  end

  def create_date
    @offset_date = Time.now.strftime("%d%m%y")
  end

  def generate
    create_date
    date_num = @offset_date
    offset = ((date_num.to_i*date_num.to_i).to_s[-4..-1])
    @offsets[:A] = offset[0].to_i
    @offsets[:B] = offset[1].to_i
    @offsets[:C] = offset[2].to_i
    @offsets[:D] = offset[3].to_i
    @offsets
  end

end
