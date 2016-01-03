get "/article/create" do
  erb :"articles/new"
end

post "/article/new" do
  category = Category.find_by(title: params[:category])
  p category
  new_article = category.articles.create(title: params[:title], description: params[:description], email: params[:email])
  @article = new_article
  # redirect to "/#{params[:category]}/#{new_article.slug}"
  erb :"articles/just_created"
end

put "/:randurl/edit" do
  article = Article.find_by(randurl: params[:randurl])
  article.title = params[:title]
  article.description = params[:description]
  article.email = params[:email]
  article.save

  redirect to "/#{params[:category]}"
end

get "/:randurl/edit" do
  @article = Article.find_by(randurl: params[:randurl])
  @category = Category.find_by(id: @article.category_id)
  erb :"articles/edit"
end

get "/:category/:article" do
  @article = Article.find_by(slug: params[:article])
  @category = params[:category]
  erb :"articles/show"
end

delete '/:randurl/delete' do
  article = Article.find_by(randurl: params[:randurl])
  article.destroy
  redirect to "/"
end


