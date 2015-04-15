class PeopleSkillsController < ApplicationController
  before_action :set_people_skill, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @people_skills = PeopleSkill.all
    respond_with(@people_skills)
  end

  def show
    respond_with(@people_skill)
  end

  def new
    @people_skill = PeopleSkill.new
    if !params[:people_id].nil?
      @people_skill.person = Person.find(params[:people_id])
    end

    if !params[:skill_id].nil?
      @people_skill.skill = Skill.find(params[:skill_id])
    end

    respond_with(@people_skill)
  end

  def edit
    @people_skill.level ||= 1
    @people_skill.favor ||= 1
  end

  def create
    @people_skill = PeopleSkill.new(people_skill_params)
    @people_skill.save

    redirect_to @people_skill.person
  end

  def update
    @people_skill.update(people_skill_params)
    redirect_to @people_skill.person
  end

  def destroy
    person = @people_skill.person
    @people_skill.destroy
    redirect_to person
  end

  private
    def set_people_skill
      @people_skill = PeopleSkill.find(params[:id])
    end

    def people_skill_params
      params.require(:people_skill).permit(:person_id, :skill_id, :favor, :level, :note)
    end
end
