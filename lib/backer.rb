class Backer

  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
    #project.author = self unless project.backer == self
  end

  def backed_projects
    @backed_projects
  end

  def project=(project)
    @project = project

  end





end
