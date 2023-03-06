class WordsController < ApplicationController

  def index
    @words = Word.all
  end

  def show
    @word = Word.find_by(id: params[:id])
  end

  def new
  end

  def create
    Word.save(word_params)
    redirect_to root_url
  end

  def edit
  end

  def update
    @word.update(word_params)
    redirect_to @word
  end

  def destroy
    Word.find(params[:id]).destroy
  end

  private

    def word_params
      params.require(:word).permit(:vocabulary, :pronunciation, :meaning, :example)
    end
end
