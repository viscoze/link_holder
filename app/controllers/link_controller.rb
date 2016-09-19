class LinkController < ApplicationController
  def create
    link_list = curent_user.link_lists.find(params[:id])
    link      = link_list.links.create(link_params)

    if link.save
      render status: 200, json: {
        message: "Link was created successfuly."
        isCreated: true,
        link: link
      }.to_json
    else
      render status: 422, json: {
        message: "Link wasn't created."
        isCreated: false,
        errors: link.errors
      }.to_json
    end
  end

  def update
    link = current_user.links.find(params[:id])

    if link.update(link_params)
      render status: 200, json: {
        message: "Link was updated successfuly.",
        isUpdated: true,
        link: link
      }.to_json
    else
      render status: 422, json: {
        message: "Link wasn't updated."
        isUpdated: false,
        errors: link.errors
      }.to_json
    end
  end

  def destroy
    link = current_user.links.find(params[:id])

    render status: 200, json: {
      message: "Link was deleted successfuly.",
      isDeleted: true,
      link: link
    }.to_json
  end

  private

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
