class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity.Task.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    activity = Activity.new(name: params[:activity][:name], type: params[:activity][:type], budget: params[:activity][:budget])

    activity.save
    redirect_to('/activities')
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    activity_updates = params[:activity]
    @activity = Activity.find(params[:id])
    # @task.update_attributes(task_updates)
    # @task.save

    @activity.name = activity_updates[:name]
    @activity.description = activity_updates[:type]
    @activity.completion_date = activity_updates[:budget]
    @activity.save

    redirect_to activity_path(@activity)
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    redirect_to activities_path
  end
end
