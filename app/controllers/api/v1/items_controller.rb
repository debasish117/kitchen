class Api::V1::ItemsController < Api::V1::BaseController

	def index
		items = Item.all
		render json: { items: items }, status: :ok
	end

	def create
		item = Item.new(item_params)
		if item.save
			render json: { item: item }
		else
			respond_with_error(item.errors.full_messages.join(', '), :unprocessable_entity, item.errors)
		end
	end

	private

  def item_params
    params.require(:item).permit(:name, :description, :prep_time, :difficulty_level, :category, :origin)
  end
end
