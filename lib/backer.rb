class Backer

  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    #project.author = self unless project.backer == self
  end

  def backed_projects
    @backed_projects
  end

  def project=(project)
    @project = project
    project.back_project(self) unless project.backer.include?(self)
  end





end
