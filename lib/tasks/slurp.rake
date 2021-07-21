namespace :slurp do
  desc "TODO"
  task videos: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "videos.csv"))
    csv = CSV.parse(csv_text.scrub, :headers => true, :encoding => "ISO-8859-1")
    puts csv_text
    csv.each do |row|
      v = Video.new
      v.name = row["name"]
      v.display_name = row["display_name"]
      v.category = row["category"]
      v.video_ref = row["video_ref"]
      v.seconds = row["seconds"]
      v.course = row["course"]
      v.save
      puts "#{v.name} saved" 
    end

    puts "There are now #{Video.count} rows in the videos table"

  end

  task newusersurveyquestions: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "new_user_survey_questions.csv"))
    csv = CSV.parse(csv_text.scrub, :headers => true, :encoding => "ISO-8859-1")
    puts csv_text
    csv.each do |row|
      q = Question.new
      q.question = row["question"]
      q.input_type = row["input_type"]
      q.answer_options = row["answer_options"]
      q.save
      puts "#{q.id} saved" 
    end

    puts "There are now #{Question.count} rows in the questions table"

  end

  task goalcategories: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "goal_categories.csv"))
    csv = CSV.parse(csv_text.scrub, :headers => true, :encoding => "ISO-8859-1")
    puts csv_text
    csv.each do |row|
      g = GoalCategory.new
      g.category = row["category"]
      g.unit = row["unit"]
      g.icon = row["icon"]
      g.save
      puts "#{g.category} saved" 
    end

    puts "There are now #{GoalCategory.count} rows in the Goal Categories table"

  end

  task paindiaryquestions: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "pain_diary_questions.csv"))
    csv = CSV.parse(csv_text.scrub, :headers => true, :encoding => "ISO-8859-1")
    puts csv_text
    csv.each do |row|
      p = PainDiaryQuestion.new
      p.category = row["category"]
      p.question = row["question"]
      p.input_type = row["input_type"]
      p.answer_options = row["answer_options"]
      p.save
      puts "#{p.category} saved" 
    end

    puts "There are now #{PainDiaryQuestion.count} rows in the Pain Diary Questions table"

  end

end
