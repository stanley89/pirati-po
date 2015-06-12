class PeopleGroupsController < ApplicationController
  before_action :set_people_group, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @people_groups = PeopleGroup.all
    respond_with(@people_groups)
  end

  def show
    respond_with(@people_group)
  end

  def new
    @people_group = PeopleGroup.new
    respond_with(@people_group)
  end

  def edit
  end

  def create
    @people_group = PeopleGroup.new(people_group_params)
    @people_group.save
    respond_with(@people_group)
  end

  def update
    @people_group.update(people_group_params)
    respond_with(@people_group)
  end

  def destroy
    @people_group.destroy
    respond_with(@people_group)
  end

  private
    def set_people_group
      @people_group = PeopleGroup.find(params[:id])
    end

    def people_group_params
      params.require(:people_group).permit(:person_id, :group_id, :date_begin, :date_end)
    end
end
