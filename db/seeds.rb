(0...50).each do |i|
  if i%3 == 0
    question = Question.create!(
      title: "Which is the genre of this book #{Faker::Book.title}?",
      optionA: Faker::Book.genre,
      optionB: Faker::Book.genre
    )
    CorrectAnswer.create!(
      question_id: question.id,
      correct_option: rand(0..1)
    )
  elsif i%3 == 1
    question = Question.create!(
      title: "Who said this in Friends:  #{Faker::TvShows::Friends.quote}?",
      optionA: Faker::TvShows::Friends.character,
      optionB: Faker::TvShows::Friends.character,
      optionC: Faker::TvShows::Friends.character
    )
    CorrectAnswer.create!(
      question_id: question.id,
      correct_option: rand(0..2)
    )
  else
    question = Question.create!(
      title: "Which team #{Faker::Sports::Football.player} is playing?",
      optionA: Faker::Sports::Football.team,
      optionB: Faker::Sports::Football.team,
      optionC: Faker::Sports::Football.team,
      optionD: Faker::Sports::Football.team
    )
    CorrectAnswer.create!(
      question_id: question.id,
      correct_option: rand(0..3)
    )
  end
end

(0...10).each do |i|
  Quiz.create!(
    title: Faker::Religion::Bible.unique.character,
    description: Faker::Religion::Bible.quote
  )
end

1.upto(50) do
  QuizQuestionMapping.create!(
    quiz_id: rand(1..Quiz.count),
    question_id: rand(1..Question.count)
  )
end
