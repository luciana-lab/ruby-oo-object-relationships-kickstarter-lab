class ProjectBacker

    attr_reader :project, :backer
    
    #The ProjectBacker class is maintaining the relationship. 
    #It should have an @@all class variable. 
    #When an instance is initialized, it should be stored in this variable.
    @@all = []

    #takes in a project and a backer on initialization, accessible through an attribute reader
    #stores the new instance of ProjectBacker in the @@all class variable 
    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end
end