require 'rails_helper'

RSpec.describe Sport, type: :model do
  before(:example) do
    @user = User.create!(username: 'one_user', password: '123456')
  end

  it 'checks correct value to a sport' do
    sport = @user.sports.build(name: 'Run', minutes: 50, seconds: 20, hours: 1, distance: 12, notes: 'notes')
    expect(sport.minutes).to be 50
  end

  it 'validate sport' do
    sport = @user.sports.build(name: 'Cycle', minutes: 30, seconds: 10, hours: 1, distance: 12, notes: 'notes')
    expect(sport.valid?).to be true
  end

  it "doesn't validate sport if name is not present" do
    sport = @user.sports.build(minutes: 30, seconds: 10, hours: 1, distance: 12, notes: 'notes')
    expect(sport.valid?).to be false
  end

  it "doesn't validate sport if name is < 3 in length" do
    sport = @user.sports.build(name: 'da', minutes: 30, seconds: 10, hours: 1, distance: 12, notes: 'notes')
    expect(sport.valid?).to be false
  end
end
