class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  # validate :clickbait

  # def clickbait
  #   value = 0
  #   phrases = ["Won't Believe", "Secret", "Top", "Guess"]
  #   phrases.each do |p|
  #     if title.include?(p)
  #       value = value + 1
  #     end
  #   end
  #   if value == 0
  #     errors.add(:title, "not clickbait-y!")
  #   end
  # end
end
