class LibrariesController < ApplicationController
  before_action :set_library, only: [:show, :update, :destroy]

  # GET /libraries
  # GET /libraries.json
  def index

    render json: Library.all
  end

  # GET /libraries/1
  # GET /libraries/1.json
  def show
    render json: @library
  end

  private

    def set_library
      @library = Library.find(params[:id])
    end

    def library_params
      params.require(:library).permit(:name)
    end
end
