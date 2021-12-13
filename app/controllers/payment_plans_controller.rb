class PaymentPlansController < ApplicationController
  before_action :get_property
  before_action :set_payment_plan, only: %i[ show edit update destroy ]

  # GET /payment_plans or /payment_plans.json
  def index
    @payment_plans = @property.payment_plans
  end

  # GET /payment_plans/1 or /payment_plans/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "plan"   # Excluding ".pdf" extension.
      end
    end
  end

  # GET /payment_plans/new
  def new
    @payment_plan = @property.payment_plans.build
  end

  # GET /payment_plans/1/edit
  def edit
  end

  # POST /payment_plans or /payment_plans.json
  def create
    @payment_plan = @property.payment_plans.build(payment_plan_params)

    respond_to do |format|
      if @payment_plan.save
        format.html { redirect_to property_payment_plans_path(@property), notice: "Payment plan was successfully created." }
        format.json { render :show, status: :created, location: @payment_plan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_plans/1 or /payment_plans/1.json
  def update
    respond_to do |format|
      if @payment_plan.update(payment_plan_params)
        format.html { redirect_to property_payment_plans_path(@property), notice: "Payment plan was successfully updated." }
        format.json { render :show, status: :ok, location: @payment_plan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_plans/1 or /payment_plans/1.json
  def destroy
    @payment_plan.destroy
    respond_to do |format|
      format.html { redirect_to property_payment_plans_path(@property), notice: "Payment plan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def plans
    @plans = @property.payment_plans
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_plan
      @payment_plan = @property.payment_plans.find(params[:id])
    end
    def get_property
      @property = Property.find(params[:property_id])
    end

    # Only allow a list of trusted parameters through.
    def payment_plan_params
      params.require(:payment_plan).permit(:down_payment, :total_amount, :months, :balloon_payment, :balloon_payment_frequency, :property_id)
    end
end
