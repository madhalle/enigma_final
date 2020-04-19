class Offset
  attr_reader :a_offset, :b_offset, :c_offset, :d_offset
  def initialize
    @a_offset = nil
    @b_offset = nil
    @c_offset = nil
    @d_offset = nil
  end

  def date
    Time.now.strftime("%d%m%y")
  end

  def generate
    date_num = date.to_i
    offset = ((date_num.to_i*date_num.to_i).to_s[-4..-1])
    @a_offset = offset[0].to_i
    @b_offset = offset[1].to_i
    @c_offset = offset[2].to_i
    @d_offset = offset[3].to_i
  end

end
