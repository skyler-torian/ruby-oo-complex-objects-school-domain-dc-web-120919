# code here!
class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        #shovels name of student into the roster of students for the designated grade
        roster[grade] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
      end
    
      def sort
        array = {}
        roster.each do |grade, students|
          array[grade] = students.sort
        end
        array
      end


end