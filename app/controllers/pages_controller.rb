class PagesController < ApplicationController

	def index
		@pages = Page.all
	end

	def show
		@page = Page.find(params[:id])
	end

	def new
		@page = Page.new
	end

	def create
		page_params = params.require(:page).permit(:title, :body, :slug)
		@page = Page.new(page_params)
		@page.save
		redirect_to @page
	end

	def edit
		@page = Page.find(params[:id])
	end

	def update
		@page = Page.find(params[:id])
		page_params = params.require(:page).permit(:title, :body, :slug)
		@page.update(page_params)
		redirect_to @page
	end

end
