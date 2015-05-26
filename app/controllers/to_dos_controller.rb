class ToDosController < ApplicationController

  def index
    @todos = current_user.to_dos 
  end

  def show 
    @todo = ToDo.find(params[:id])
  end
  
  def new 
    @todo = ToDo.new
  end

  def create
    @todo = current_user.to_dos.build(to_do_params) 

    if @todo.save
      redirect_to @todo
    else
      render :new
    end
  end

  def edit
    @todo = ToDo.find(params[:id])
  end

  def update
    @todo = ToDo.find(params[:id])
    
    if @todo.update(to_do_params)
      redirect_to @todo
    else
      render :new
    end
  end

  def destroy
    ToDo.find(params[:id]).destroy!
    redirect_to todos_path
  end

  private

  def to_do_params
    params.require(:to_do).permit(:title)
  end

end
