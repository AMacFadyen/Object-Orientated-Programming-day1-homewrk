class Student

    def initialize(student_name, student_cohort)
        @name = student_name
        @cohort = student_cohort
    end

    def student_name()
        return @name
    end

    def get_cohort()
        return @cohort
    end

    def set_new_student(new_name, new_cohort)
        @name = new_name
        @cohort = new_cohort
    end

    def student_talk()
        return "I can talk!"
    end

    def fav_sport(student_sport)
        return "I love to play #{student_sport}"
    end

end
#class end
