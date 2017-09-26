require('minitest/autorun')
require('minitest/rg')
require_relative('./library')

class TestLibrary < MiniTest::Test

    def test_book_name()
        libraryA = Library.new(
            [{
            title: "lord_of_the_rings",
            rental_details: {
                student_name: "Jeff",
                date: "01/12/16"
            }
            },{
                title: "Eye_of_the_world",
                rental_details: {
                    student_name: "Perrin",
                    date: "04/02/06"
                }
                },{
                    title: "Dracula",
                    rental_details: {
                        student_name: "Harker",
                        date: "08/07/16"
                    }
                }
            ])

        assert_equal(
            [{
                title: "lord_of_the_rings",
                rental_details:
                {
                    student_name: "Jeff",
                    date: "01/12/16"
                }
            },
            {
                title: "Eye_of_the_world",
                rental_details:
                {
                    student_name: "Perrin",
                    date: "04/02/06"
                }
            },
            {
                title: "Dracula",
                rental_details:
                {
                    student_name: "Harker",
                    date: "08/07/16"
                }
            }
            ], libraryA.list())
    end

    def display_book_info()

        library = Library.new([
        {
            title: "lord_of_the_rings",
            rental_details:
            {
                student_name: "Jeff",
                date: "01/12/16"
            }
        },
        {
            title: "Eye_of_the_world",
            rental_details:
            {
                student_name: "Perrin",
                date: "04/02/06"
            }
        },
        {
            title: "Dracula",
            rental_details:
            {
                student_name: "Harker",
                date: "08/07/16"
            }
        }])

        assert_equal(
        {
            title: "Eye_of_the_world",
            rental_details:
            {
                student_name: "Perrin",
                date: "04/02/06"
            }
        }, library.book_details("Eye_of_the_world"))
    end

end
#Class end
