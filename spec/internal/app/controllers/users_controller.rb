class UsersController < ActionController::Base

  prepend ::ImplicitRendering
  implicit_rendering(
    new: '_form',
    edit: '_form'
  )

  def new
  end

  def edit
  end

  def create
    render action: :new
  end

  def index
  end

end
