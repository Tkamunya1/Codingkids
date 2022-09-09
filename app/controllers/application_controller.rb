class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get '/poems' do
    poems = Poem.all
    poems.to_json
  end
  post '/poems' do
    poem= Poem.create(params)
    poem.to_json 
  end

   post '/poems' do
    poem= Poem.create(
      title: params[:title], lines: params[:lines], author: params[:author], linecount: params[:linecount]
    )
   end
  delete '/poems/:id' do
    poem = Poem.find(params)[:id]
    poem.destroy
    poem.to_json
  end
end
