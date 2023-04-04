require 'rails_helper'

RSpec.describe Word, type: :model do

  before do
    @word = FactoryBot.build(:word1)
  end

  it "정상적인 word인스턴스 생성" do
    expect(@word).to be_valid
  end
  
  it "vocabulary 공백 확인" do
    expect(FactoryBot.build(:word, vocabulary: nil)).to be_invalid
  end

  it "pronunciation 공백 확인" do
    pronunciation = ""
    @word.pronunciation = " "
    expect(@word).to be_invalid
  end

  it "meaning 공백 확인" do
    meaning = ""
    @word.meaning = " "
    expect(@word).to be_invalid
  end

  it "vocabulary 최대 글자수 확인" do
    @word.vocabulary = "a" * 51
    expect(@word).to be_invalid
  end

  it "pronunciation 최대 글자수 확인" do
    @word.pronunciation = "a" * 101
    expect(@word).to be_invalid
  end

  it "meaning 최대 글자수 확인" do
    @word.meaning = "a" * 301
    expect(@word).to be_invalid
  end
end
