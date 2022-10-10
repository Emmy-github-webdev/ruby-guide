def group_by_marks(marks, pass_marks)
  # your code here
    marks.group_by {|studentName, studentMark| studentMark < pass_marks ? "Failed" : "Passed"}
end