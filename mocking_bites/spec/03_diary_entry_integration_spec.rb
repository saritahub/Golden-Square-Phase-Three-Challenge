require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three-Challenge/mocking_bites/lib/03_Unit_Testing_Peer_Classes/03_diary_reader.rb'
require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three-Challenge/mocking_bites/lib/03_Unit_Testing_Peer_Classes/03_diary_entry.rb'

RSpec.describe DiaryEntryFormatter do
  it "formats a diary entry" do
    diary_entry = DiaryEntry.new("Hello", "Hello, world!")
    formatter = DiaryEntryFormatter.new(diary_entry)
    expect(formatter.format).to eq "Hello: Hello, world!"
  end
end