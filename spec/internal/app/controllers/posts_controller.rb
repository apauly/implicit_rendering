class PostsController < ActionController::Base

  prepend ::ImplicitRendering
  implicit_rendering(
    new: '_form'
  )

  def create
    render action: :new
  end

end
