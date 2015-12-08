class TagsController < ApplicationController

def index
  @tags = Tag.all
  render json: @tags
end

def show
    @tag = Tag.select{|t| t.name == params[:name]}.first
    respond_to do |each|
      each.json{render json: @tag}
    end
  end

def create
  @tag = Tag.create(tag_params)
  if @tag.save
    render json: @tags, status: :created
  else
    render json: @tag.errors, status: 400
  end
end

private

 def tag_params
   params.permit(:name)
 end
