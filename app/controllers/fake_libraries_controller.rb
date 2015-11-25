class FakeLibrariesController < ApplicationController
  before_action :set_fake_library, only: [:show, :update, :destroy]

  # GET /fake_libraries
  # GET /fake_libraries.json
  def index
    @fake_libraries = FakeLibrary.all

    render json: @fake_libraries
  end

  # GET /fake_libraries/1
  # GET /fake_libraries/1.json
  def show
    render json: @fake_library
  end

  private

    def set_fake_library
      @fake_library = FakeLibrary.find(params[:id])
    end

    def fake_library_params
      params.require(:fake_library).permit(:name)
    end
end
