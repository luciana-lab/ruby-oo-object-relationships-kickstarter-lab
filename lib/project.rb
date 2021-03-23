class Project

    attr_reader :title

    #takes a title on initialization, accessible through an attribute reader
    def initialize(title)
        @title = title
    end

    #is an instance method that accepts a backer as an argument and 
    #creates a ProjectBacker, associating the backer with this project
    #Similarly, write a method on the Project class called add_backer 
    #that takes in a Backer instance and creates a ProjectBacker using the Backer instance 
    #and the current Project instance.
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    #returns an array of backers associated with this Project instance
    #For the Project class, write a similar method, backers, 
    #that returns all backers associated with this Project instance.
    def backers
        backers_all = ProjectBacker.all.select do |backer|
            backer.project == self
        end
        backers_all.map do |p|
            p.backer
        end
    end
end