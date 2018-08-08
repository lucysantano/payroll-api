require 'sinatra'
require 'sinatra/activerecord'

require './models/report'

ENV['DATABASE_URL'] ||= 'sqlite3:db/database.db'

class Application < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  set :database, ENV['DATABASE_URL']

  before do
    content_type 'application/json'
  end

  post '/reports' do
    params = JSON.parse(request.body.read).symbolize_keys
    Report.create(name: params[:name])
  end
end
