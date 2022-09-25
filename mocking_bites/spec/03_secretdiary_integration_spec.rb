require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three-Challenge/mocking_bites/lib/03_Unit_Testing_Peer_Classes/03_mb_exercise/03_diary.rb'
require '/Users/saritaradia/Desktop/Projects/Golden-Square-Phase-Three-Challenge/mocking_bites/lib/03_Unit_Testing_Peer_Classes/03_mb_exercise/03_SecretDiary.rb'

RSpec.describe "Secret Diary Integration" do
  it "Raises the error 'Go away!' if the diary is locked" do
    diary = Diary.new("hello there")
    secret_diary = SecretDiary.new(diary)
    expect {secret_diary.read}.to raise_error "Go away!"
  end

  it "Returns the diary's contents if unlocked" do
    diary = Diary.new("hey")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq [diary]
  end

    context "when relocked" do
      it "Diary not read because locked, raises error Go away!" do
        diary = Diary.new("test contents")
        secret_diary = SecretDiary.new(diary)
        secret_diary.unlock
        secret_diary.lock
        expect{ secret_diary.read }.to raise_error "Go away!"
      end
    end
  end