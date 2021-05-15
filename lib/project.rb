class Project

  attr_reader :title, :backer

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
    author.project = self
  end
end
