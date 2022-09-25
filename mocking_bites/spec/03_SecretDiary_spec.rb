require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three-Challenge/mocking_bites/lib/03_Unit_Testing_Peer_Classes/03_mb_exercise/03_SecretDiary.rb'

RSpec.describe "Secret Diary" do
  context "when locked" do
    it "Raises the error 'Go away!' if the diary is locked" do
      fake_diary = double(:fake_diary, contents:"Fake contents")
      secret_diary = SecretDiary.new(fake_diary)
      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end

  it "Returns the diary's contents if unlocked" do
    fake_diary = double(:fake_diary, contents:"Fake contents")
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq [fake_diary]
  end

  it "Example 2: Returns the diary's contents if unlocked" do
    fake_diary = double(:fake_diary, read: "FAKE CONTENTS")
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq [fake_diary]
  end

  context "when relocked" do
    it "Diary not read because locked, raises error Go away!" do
      fake_diary = double(:fake_diary, read: "FAKE CONTENTS")
      secret_diary = SecretDiary.new(fake_diary)
      secret_diary.unlock
      secret_diary.lock
      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end
  end