class Statement

  def initialize
    @time = Time.now
  end

  def time
    @time = Time.now.strftime('%d/%m/%Y')
  end
end 