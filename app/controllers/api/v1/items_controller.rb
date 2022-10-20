module Api  
    module V1 
        class ItemsController < ApplicationController
            protect_from_forgery with: :null_session
            def create 
                item = Item.new(item_params)

                if item.save
                    render json: ItemSerializer.new(item).serialized_json
                else 
                    render json: { error: item.errors.messages}, status:422
                end
            end

            def destroy 
                item = Item.find(params[:id])

                if item.destroy
                    head :no_content
                else 
                    render json: { error: item.errors.messages}, status:422
                end
            end

            private

            def item_params 
                params.require(:item).permit(:name, :notes, :quantity, :store_id)
            end
        end
    end
end
