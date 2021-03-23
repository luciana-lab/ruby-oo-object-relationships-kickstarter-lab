require 'pry'
class Backer
    attr_reader :name

    #takes a name on initialization, accessible through an attribute reader
    def initialize(name)
        @name = name
    end

    #is an instance method that accepts a project as an argument and 
    #creates a ProjectBacker, associating the project with this backer
    #This method should create a ProjectBacker instance using the provided Project instance 
    #and the current Backer instance (the instance this method was called on).
    def back_project(project)
        ProjectBacker.new(project, self)
    end

    #returns an array of projects associated with this Backer instance
    #build an instance method that returns all the projects associated with this Backer instance. 
    #Since Project instances are not directly associated with Backer instances, 
    #you will need to get this information _through the ProjectBacker class.
    #used help of https://github.com/Adubz97/ruby-oo-object-relationships-kickstarter-lab-wdc01-seng-ft-071320/blob/master/lib/project.rb
    def backed_projects
        back_project = ProjectBacker.all.select do |project|
            project.backer == self
        end
        back_project.map do |p|
            p.project
        end
    end
end