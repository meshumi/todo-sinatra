class ListsController < ApplicationController 
  post '/lists/new' do
    list = List.create(:name => params[:name], :user_id => session[:user_id])
    task = Task.create(:name => params[:tasks][:name])
    list.tasks << task unless list.tasks.include?(task)
    redirect '/tasks'
  end

  get '/lists/:id/edit' do
    redirect_if_not_logged_in
    @list = List.find_by_id(params[:id])
    erb :'lists/edit'
  end

  patch '/lists/:id' do 
    @list = List.find_by_id(params[:id])
    @list.name = params[:name]
    @list.save
    redirect '/tasks'
  end

  get '/lists/:id/delete' do
    @list = List.find_by_id(params[:id])
    erb :'lists/delete'
  end

  delete '/lists/:id' do 
    @list = List.find_by_id(params[:id])
    @list.destroy
    redirect '/tasks'
  end
end
