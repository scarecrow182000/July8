
User.destroy_all
Assignment.destroy_all
CompletedAssignment.destroy_all

names = %w(Anna Brian Drew Jeff Eric Lara Cate Brianne )
names.each do |name|
  User.create name: name
end

week1 = Assignment.create title: "Concert", description: "Musical", assigned: "2014-06-12", due_date: "2014-06-16"
week2 = Assignment.create title: "Blackjack", description: "Fun&Games", assigned: "2014-06-19", due_date: "2014-06-23"
week3 = Assignment.create title: "Rails", description: "Work,Work,Work", assigned: "2014-06-26", due_date: "2014-06-30"
week4 = Assignment.create title: "Homework", description: "More Work", assigned: "2014-07-03", due_date: "2014-07-08"
week5 = Assignment.create title: "More Homework", description: "Arrrrgh! Suspense", assigned: "2014-07-11", due_date: "2014-07-15"


[week1, week2, week3, week4, week5].each do |assignment|
  User.all.each do |user|
      user.completed_assignments.create(assignment: assignment,
                                          #  on_time: [true,false].sample,
                                           github_url: "the-url")

  end
end
