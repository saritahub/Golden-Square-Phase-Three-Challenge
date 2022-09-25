require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three-Challenge/mocking_bites/lib/03_Unit_Testing_Peer_Classes/03_mb_exercise/03_diary.rb'

RSpec.describe Diary do
    it "sets and  reads the contents" do
      diary = Diary.new("Hey")
      expect(diary.read).to eq "Hey"
    end
end