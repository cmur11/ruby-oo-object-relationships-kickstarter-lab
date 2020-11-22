require 'pry'
class Backer
    attr_accessor :name

    def initialize (name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        
       bck_projs = ProjectBacker.all.select{|name| name.backer == self}.map {|proj| proj.project}
       #bck_projs.project
        
    end
end