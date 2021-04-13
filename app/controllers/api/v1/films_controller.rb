class Api::V1::FilmsController < Api::V1::BaseController
    acts_as_token_authentication_handler_for User, except: [ :index, :show, :search ]
    before_action :set_film, only: [ :show, :update, :destroy]

    def index
      @films = policy_scope(Film)
    end

    def show
    end

    def update
      if @film.update(film_params)
        render :show
      else
        render_error
      end
    end

    def create
      @film = Film.new(film_params)
      authorize @film
      if @film.save
        render :show, status: :created
      else
        render_error
      end
    end

    def search
      @films = Film.where(title: params[:query])
      authorize @films
    end

    def destroy
      @film.destroy
      head :no_content
    end

    def set_film
      @film = Film.find( params[:id])
      authorize @film
    end

    private

    def film_params
      params.require(:film).permit(:title, :release_date, :directed_by, :rating, :genre)
    end

    def render_error
      render json: { errors: @film.errors.full_messages },
        status: :unprocessable_entity
    end
end
