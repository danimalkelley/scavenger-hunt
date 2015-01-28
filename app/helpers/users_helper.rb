helpers do

  def current_user
    if session[:user_id]
      return @user ||= User.find(session[:user_id])
    end
  end

  def create_user
    @user = User.new(params[:user])
    @user.password = params[:user][:password]
    if @user.save!
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      redirect '/users/new'
    end
  end

  def login
    @user = User.find_by_email(params[:user][:email])
    if @user.password == params[:user][:password]
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      redirect '/sessions/new'
    end
  end

  def logout
    session.clear
    redirect '/'
  end

end
