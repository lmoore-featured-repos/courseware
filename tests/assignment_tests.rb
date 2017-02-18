class AssignmentTest < MiniTest::Test

  def setup
    @course = Course.create(name: 'Cheese Graters & You', course_code: '993')
  end

  def test_assignments_have_course_id_and_name_and_percent_of_grade
    assignment1 = Assignment.create(course_id: @course.id, name: 'Destroy C-137', percent_of_grade: '89')
# =======
#     course = Course.create(name: 'Cheese Graters & You', course_code: '993')
#     assignment1 = Assignment.create(course_id: course.id, name: 'Destroy C-137', percent_of_grade: '89')
# >>>>>>> master
    assignment2 = Assignment.create(name: 'Kill All Humans', percent_of_grade: '94')
    assignment3 = Assignment.create(course_id: @course.id, percent_of_grade: '66')
    assignment4 = Assignment.create(course_id: @course.id, name: 'Gazorpazorpfield')

    assert assignment1.valid?
    assert assignment2.invalid?
    assert assignment3.invalid?
    assert assignment4.invalid?
  end

  def test_assignment_name_is_unique_within_given_course_id
<<<<<<< HEAD
    course2 = Course.create
    assignment1 = Assignment.create(course_id: @course.id, name: 'Aztec Tomb', percent_of_grade: '76')
    assignment2 = Assignment.create(course_id: @course.id, name: 'Sword of Destiny', percent_of_grade: '81')
    assignment3 = Assignment.create(course_id: @course.id, name: 'Sword of Destiny', percent_of_grade: '66')
=======
    course = Course.create(name: 'Dream Spirals & Other Psychedelic Cucumber Varietals', course_code: '9124')
    course2 = Course.create(name: 'Sharp Pointy Things & Other Reasons to Become a Gelatinous Cube', course_code: '5812')
    assignment1 = Assignment.create(course_id: course.id, name: 'Aztec Tomb', percent_of_grade: '76')
    assignment2 = Assignment.create(course_id: course.id, name: 'Sword of Destiny', percent_of_grade: '81')
    assignment3 = Assignment.create(course_id: course.id, name: 'Sword of Destiny', percent_of_grade: '66')
>>>>>>> master
    assignment4 = Assignment.create(course_id: course2.id, name: 'Sword of Destiny', percent_of_grade: '99')

    assert assignment1.valid?
    assert assignment2.valid?
    assert assignment3.invalid?
    assert assignment4.valid?
  end

end
