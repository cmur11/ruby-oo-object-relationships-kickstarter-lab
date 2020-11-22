class Project
    attr_accessor :title

    def initialize(title)
        @title = title

    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def project_backer
        ProjectBacker.all.select {|back| back.project ==self}
    end
    def backers
        project_backer.map {|mixed_data|mixed_data.backer}
   # binding.pry
    end
end