class ProjectBacker
    attr_accessor :project, :backer
    #belongs to class holds the attributes of the has many through relationships
    @@all = []
    def initialize(project,backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end

end