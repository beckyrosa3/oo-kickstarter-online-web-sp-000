class Project

  attr_reader :title, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    @backers
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
    #author.project = self
  end

  def backer=(backer)
    @backer = backer
    backer.add_backer(self) unless backer.project.include?(self)
  end

end
