class MusicAlbumsController < ApplicationController
  def index
    @musicalbums=MusicAlbum.all
  end

   #  def all_albums
  #   @albums = Album.where(published: true)
  #   @album = Album.where(published: true).count
  #   @user = User.all
  # end

  # def draft_album
  #   @albums = current_user.albums.where(published: false)
  #   @album_draft = current_user.albums.where(published: false).count
  # end

  # def published_album
  #   @albums = current_user.albums.where(published: true)
  #   @album = current_user.albums.where(published: true).count
  # end

  def show
    @musicalbum= MusicAlbum.find(params[:id])
  end

  def new

    @musicalbum= MusicAlbum.new
  end

  def create
    @musicalbum = MusicAlbum.new(musicalbum_params)

    if @musicalbum.save
      redirect_to @musicalbum
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @musicalbum = MusicAlbum.find(params[:id])
  end

  def update
    @musicalbum = MusicAlbum.find(params[:id])

    if @musicalbum.update(musicalbum_params)
      redirect_to @musicalbum
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @musicalbum= MusicAlbum.find(params[:id])
    @musicalbum.destroy

    redirect_to root_path
  end

  # def delete_image
  #   attachment = ActiveStorage::Attachment.find(params[:id])
  #   attachment.purge # or use purge_later
  #   redirect_back(fallback_location: albums_url)
  # end

  private

  def musicalbum_params
    params.require(:music_album).permit(:name, :description, :price, :cover_image, :file)
  end
end
