class ItemsController < ApplicationController
	def show
		@item = Item.find(params[:id])
	end

	def index
		@items = Item.all
	end

	def new 
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)
		@item.save
		redirect_to @item
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
		@item.update(item_params)
		redirect_to @item

	end

	def destroy
		@item = Itemm.find(paraams[:id])
		@item.destroy
		redirect_to items_url
	end

	private

	def item_params
		params.require(:item).permit(
			:name, :description, :price, 
			:email, :sellrer_id,:image_url 
			)
	end

end
