require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three-Challenge/mocking_bites/lib/03_Unit_Testing_Peer_Classes/03_diary_reader.rb'

RSpec.describe DiaryEntryFormatter do
  it "Returns the formatted title and contents" do
    fake_diary_entry = double(:fake_diary_entry,
                              title: "fake title", contents: "fake contents")
    formatter = DiaryEntryFormatter.new(fake_diary_entry)
    expect(formatter.format).to eq "fake title: fake contents"
  end
end