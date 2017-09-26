require('minitest/autorun')
require('minitest/rg')
require_relative('./student')

class TestStudent < MiniTest::Test

    def test_student_name()
        studentA = Student.new("Terry", 4)
        assert_equal("Terry", studentA.student_name())
    end

    def test_cohort_num()
        studentA = Student.new("Terry", 4)
        assert_equal(4, studentA.get_cohort())
    end

    def test_student_update
        studentA = Student.new("Terry", 4)
        studentA.set_new_student("Harry", 2)
        assert_equal("Harry", studentA.student_name())
        assert_equal(2, studentA.get_cohort())
    end

    def test_student_talk()
        studentA = Student.new("Terry", 4)
        assert_equal("I can talk!", studentA.student_talk())
    end

    def test_student_favourite_sport()
        studentA = Student.new("Terry", 4)
        assert_equal("I love to play Hockey", studentA.fav_sport("Hockey"))
    end
end
#class end
