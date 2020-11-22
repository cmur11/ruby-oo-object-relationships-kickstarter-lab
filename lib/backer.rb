require 'pry'
class Backer
    attr_accessor :name
    #has many relationships do not hold the attributes of any other has many relationshp
    def initialize (name)
        #initializes the backer's name and when it is in (argument) it is a value that will be passed upon the creation of the Class. To allow it to default simply assign the @name class variable in the method or name= to default value
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
        #Calls upon the ProjectBacker class and creates a new instance. This instance takes in the argument of a project and can use self because it is being called in the Backer instance

    end

    def backed_projects
        
       ProjectBacker.all.select{|name| name.backer == self}.map {|proj| proj.project}
       #bck_projs.project
        
    end
end