class VideosController < ApplicationController
  def index
    matching_videos = Video.all

    @list_of_videos = matching_videos.order({ :created_at => :desc })

    render({ :template => "videos/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_videos = Video.where({ :id => the_id })

    @the_video = matching_videos.at(0)

    render({ :template => "videos/show.html.erb" })
  end

  def create
    the_video = Video.new
    the_video.name = params.fetch("query_name")
    the_video.display_name = params.fetch("query_display_name")
    the_video.category = params.fetch("query_category")
    the_video.video_ref = params.fetch("query_video_ref")
    the_video.course = params.fetch("query_course")
    the_video.seconds = params.fetch("query_seconds")
    the_video.pre_video_action = params.fetch("query_pre_video_action")
    the_video.post_video_action = params.fetch("query_post_video_action")
    the_video.lessons_count = params.fetch("query_lessons_count")

    if the_video.valid?
      the_video.save
      redirect_to("/videos", { :notice => "Video created successfully." })
    else
      redirect_to("/videos", { :notice => "Video failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_video = Video.where({ :id => the_id }).at(0)

    the_video.name = params.fetch("query_name")
    the_video.display_name = params.fetch("query_display_name")
    the_video.category = params.fetch("query_category")
    the_video.video_ref = params.fetch("query_video_ref")
    the_video.course = params.fetch("query_course")
    the_video.seconds = params.fetch("query_seconds")
    the_video.pre_video_action = params.fetch("query_pre_video_action")
    the_video.post_video_action = params.fetch("query_post_video_action")
    the_video.lessons_count = params.fetch("query_lessons_count")

    if the_video.valid?
      the_video.save
      redirect_to("/videos/#{the_video.id}", { :notice => "Video updated successfully."} )
    else
      redirect_to("/videos/#{the_video.id}", { :alert => "Video failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_video = Video.where({ :id => the_id }).at(0)

    the_video.destroy

    redirect_to("/videos", { :notice => "Video deleted successfully."} )
  end
end
