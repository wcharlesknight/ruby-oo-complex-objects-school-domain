require 'pry'
class School

    attr_reader :school_name
    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}  
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name 
        else
            @roster[grade] = []
            @roster[grade] << name 
        end
    #binding.pry 
    end
    
    def grade(grade)
        @roster[grade]
    end
    
    def sort
       hash = {}
       @roster.sort.each do |student|
        hash[student[0]] = student[1].sort
       end
       hash
    end 
end

  
