module Api  
    module V1 
        class StoresController < ApplicationController
            protect_from_forgery with: :null_session
            def index 
                stores = Store.all

                render json: StoreSerializer.new(stores, options).serialized_json
            end

            def show 
                store = Store.find_by(slug: params[:slug])
                render json: StoreSerializer.new(store, options).serialized_json
            end

            def create 
                store = Store.new(store_params)

                if store.save
                    render json: StoreSerializer.new(store).serialized_json
                else
                    render json: {error: store.errors.messages}, status: 422
                end
            end

            def update 
                store = Store.find_by(slug: params[:slug])

                if store.update(store_params)
                    render json: StoreSerializer.new(store, options).serialized_json
                else
                    render json: {error: store.errors.messages}, status: 422
                end
            end

            def destroy 
                store = Store.find_by(slug: params[:slug])

                if store.destroy
                    head :no_content
                else
                    render json: {error: store.errors.messages}, status: 422
                end
            end

            private 

            def store_params 
                params.require(:store).permit(:name, :image_url)
            end

            def options 
                @options ||= {include: %i[items]}
            end
        end
    end
end
