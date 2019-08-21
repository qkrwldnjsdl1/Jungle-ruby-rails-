class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with :name => "Jungle", :password => "book"
  def show
    @info1 = Product.count
    @info2 = Category.count
  end
end
