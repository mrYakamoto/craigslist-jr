get "/:category" do

  @category = Category.find_by(title: params[:category])
  @articles = @category.articles

  erb :"categories/show"
end
