class QuestionsController < ApplicationController
  def index
    @firsts = First.all
    @lasts = Last.all
  end
end
