class BooksController < ApplicationController

  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all.page(params[:page])
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path, notice: 'Book was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @book.update(book_params)
      redirect_to books_path, notice: 'Book was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(
  :title,
  :subtitle,
  :page_count,
  :color_page_count,
  :bw_page_count,
  :isbn,
  :ean,
  :price_ttc,
  :c4_extended,
  :c4_reduced,
  :c4_argu,
  :visible,
  :appearance_percentage,
  :appearance_random,
  :showroom,
  :description,
  :image_url
    )
  end
end
