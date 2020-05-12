require_relative '../models/task'

class TasksController < ApplicationController
    def list
        @tasks = Task.all
    end

    def show
        @task = Task.find(params[:id])
    end

    def create
        @task = Task.create title: params[:title], details: params[:details]
        @task.save
        redirect_to tasks_url
    end

    def edit
        @task = Task.find(params[:id])
    end

    def edit_task
        @task = Task.find(params[:id])
        @task.title = params[:title]
        @task.details = params[:details]
        params[:task_ids] == ["1"] ? @task.completed = true : @task.completed = false
        @task.save
        redirect_to tasks_url

    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy

        redirect_to tasks_url
    end
end
