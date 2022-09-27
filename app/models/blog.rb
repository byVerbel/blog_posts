class Blog < ApplicationRecord
  has_one :apun_self_evaluation, class_name: "ApunSelfEvaluation", dependent: :destroy
  has_many :bibliographies, class_name: "Bibliography", dependent: :destroy
end
