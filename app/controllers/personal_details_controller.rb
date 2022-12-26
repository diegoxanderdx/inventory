class PersonalDetailsController < ApplicationController
  before_action :set_user
  before_action :set_personal_detail, only: %i[ show edit update destroy ]

  # GET /personal_details/1 or /personal_details/1.json
  def show
  end

  # GET /personal_details/new
  def new
    @personal_detail = @user.build_personal_detail
  end

  # GET /personal_details/1/edit
  def edit
  end

  # POST /personal_details or /personal_details.json
  def create
    @personal_detail = @user.build_personal_detail(personal_detail_params)

    respond_to do |format|
      if @personal_detail.save
        format.html { redirect_to [@user, @personal_detail], notice: "Personal detail was successfully created." }
        format.json { render :show, status: :created, location: @personal_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @personal_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_details/1 or /personal_details/1.json
  def update
    respond_to do |format|
      if @personal_detail.update(personal_detail_params)
        format.html { redirect_to [@user, @personal_detail], notice: "Personal detail was successfully updated." }
        format.json { render :show, status: :ok, location: @personal_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @personal_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_details/1 or /personal_details/1.json
  def destroy
    @personal_detail.destroy

    respond_to do |format|
      format.html { redirect_to [@user, :personal_details], notice: "Personal detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_user
      @user = User.find(params[:user_id])
    end

    def set_personal_detail
      @personal_detail = PersonalDetail.find(params[:id])
    end

    def personal_detail_params
      params.require(:personal_detail).permit(:username, :first_name, :last_name, :id_type, :id_number, :phone_number, :user_id)
    end
end
