require 'rails_helper'

RSpec.describe 'Users', type: :request do
  it 'creates a user if entered valid params' do
    post '/api/v1/users', params: { password: '123456', username: 'dan-ronan' }
    expect(response).to have_http_status(:ok)
  end

  it 'creates a new session if a user exists' do
    post '/api/v1/login', params: { username: 'dan-ronan', password: '123456' }
    expect(response).to have_http_status :ok
  end
end
