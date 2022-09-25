require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three-Challenge/mocking_bites/lib/03_Unit_Testing_Peer_Classes/03_diary_entry.rb'

RSpec.describe DiaryEntry do
  it "constucts" do
    diary_entry = DiaryEntry.new("the title", "the contents")
    expect(diary_entry.title).to eq "the title"
    expect(diary_entry.contents).to eq "the contents"
  end
end