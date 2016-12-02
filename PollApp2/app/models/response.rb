class Response < ActiveRecord::Base
  validates :answer_choice_id, :user_id, presence: true

  belongs_to :answer_choice,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :answer_choice_id

    # JOIN answer_choices
    # ON responses.answer_choice_id = answer_choices.id

  belongs_to :respondent,
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_id

  has_one :question,
    through: :answer_choice,
    source: :question

  def sibling_responses
    self.question.responses.where("id != ?", self.id)


  end

end
