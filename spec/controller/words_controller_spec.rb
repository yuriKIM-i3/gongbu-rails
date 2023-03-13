require 'rails_helper'
# https://qiita.com/jnchito/items/42193d066bd61c740612#context-%E3%81%A8-before-%E3%81%A7%E3%82%82%E3%81%86%E5%B0%91%E3%81%97%E4%BE%BF%E5%88%A9%E3%81%AB
# rspec 쓰는법 기초
RSpec.describe WordsController, type: :controller do #describe: 테스트 할 대상
  describe "#index" do  #ネストしたdescribe、테스트를 그룹화, 큰따옴표 안에 보통은 메소드를 쓰는듯
    # 正常なレスポンスか？
    it "responds successfully" do #it 블럭: 확인하고자 하는 내용을 테스트 코드로 작성, it하나당 example하나로 봄
      get :index
      expect(response.status).to eq(200) #하나의 example에 여러개의 expect를 쓸 수 있지만, 보수성을 위해 하나만 쓰는게 좋다고 함
    end

    context "when the time is afternoon" do #context: describe랑 기능적으로 같으나 조건분기 테스트를 할때 사용, 영어로 기술하는게 좋다고함
      it "1" do
        expect("낮").to eq("낮")
      end
    end

    context "when the time is night" do
      it "2" do
        expect("밤").to eq("밤")
      end
    end
  end

  describe "#show" do
    before do #before: 각각의 example이 실행되기 전에 이 블록이 실행됨, 공통처리를 쓰는 곳
      @word = FactoryBot.build(:word) #it이랑 変数のスコープ가 다르기때문에 인스턴스변수로 선언
      # let(:word) { FactoryBot.build(:word) } #하지만 let을 써서 로컬변수로 선언할수도있음, 遅延評価される という特徴があり, 변수가 쓰여질때서야 불려짐(메모리에 적재된다는뜻?)
    end

    # 正常なレスポンスか？
    it "show responds successfully" do
      pending 'この先はなぜかテストが失敗するのであとで直す' #pending의 뒤의 테스트는 중단되는게 아닌 무의 상태가 된다. 때문에 다음에 있는 테스트코드가 그대로 실행됨
      get :show, params: {id: @word.id}
      expect(response.status).to eq(200)
    end
  end
end