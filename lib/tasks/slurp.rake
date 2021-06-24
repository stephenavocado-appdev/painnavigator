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

  task questions: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "questions.csv"))
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
      g.save
      puts "#{g.category} saved" 
    end

    puts "There are now #{GoalCategory.count} rows in the Goal Categories table"

  end

end
