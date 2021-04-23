require 'rails_helper'

RSpec.describe 'Sports', type: :request do
  let(:obj) do
    { name: 'Test Title', minutes: 50,
      seconds: 10, hours: 1, distance: 12, notes: '1 mile PB' }
  end
  before(:example) do
    @user = User.create(username: 'test_user', password: '123456')
    token = JWT.encode({ user_id: @user.id }, 'yourSecret')
    @headers = { Authorization: "Bearer #{token}" }
    @sport = @user.sports.create(name: 'Test Title', minutes: 50,
                                 seconds: 10, hours: 1, distance: 12, notes: '1 mile PB')
  end

  it 'shows all sports' do
    get '/api/v1/sports', headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it 'creates a sport' do
    post '/api/v1/sports',
         params: obj,
         headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it "updates a sport's distance" do
    patch "/api/v1/sports/#{@sport.id}", params: { distance: 11 }, headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it 'shows sport info' do
    get "/api/v1/sports/#{@sport.id}", headers: @headers
    expect(response).to have_http_status(:ok)
  end
end
