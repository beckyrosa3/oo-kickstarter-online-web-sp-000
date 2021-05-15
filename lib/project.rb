class Project

  attr_accessor :backer
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def backer=(backer)
    @backer = backer
    backer.add_backer(self)
  end

  def backers
    @backers
  end

  def add_backer(backer)
    @backers << backer
  end
end
