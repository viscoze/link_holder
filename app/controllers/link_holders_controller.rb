class LinkHoldersController < ApplicationController
  def index
    link_lists = LinkList.all
    render json: link_lists.as_json(include: :links)
  end

  def create
    link_list = current_user.link_lists.build(link_list_params)

    if link_list.save
      render status: 200, json: {
        message: "Link list was created successfuly.",
        isCreated: true,
        link_list: link_list,
      }.to_json
    else
      render status: 422, json: {
        message: "Link list was't created.",
        isCreated: false,
        errors: link_list.errors
      }.to_json
    end
  end

  def update
    link_list = LinkList.find(params[:id])

    if link_list.update(link_list_params)
      render status: 200, json: {
        message: "Link list was updated successfuly.",
        isUpdated: true,
        link_list: link_list
      }.to_json
    else
      render status: 422, json: {
        message: "Link list wasn't updated.",
        isUpdated: false,
        errors: link_list.errors
      }.to_json
    end
  end

  def destroy
    link_list = LinkList.find(params[:id])
    link_list.destroy
    render status: 200, json: {
      message: "Link list was deleted."
      isDeleted: true,
      link_list: link_list
    }.to_json
  end

  private

  def link_list_params
    params.require(:link_list).permit(:title)
  end
end
