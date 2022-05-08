class BooksController < ApplicationController
    def index
        @books=Book.all
    end
    def new
        @book=Book.new
    end
    def show
        @book=Book.find(params[:id])
    end
    def create
        @book=Book.new (strong_params)
        respond_to do |format|
            if @book.save
                format.html {redirect_to books_path(@book),notice: "Se creo tu libro"}
            else
                format.html {reder :new, status: :unprocessable_entity}
            end
        end
    end
    def edit
        @book=Book.find(params[:id])
    end
    def update
        @book=Book.find(params[:id])
        respond_to do |format|
            if @book.update(strong_params)
                format.html {redirect_to root_path, notice:"book was successfully updated"}
            else
                format.html {render :edit, status: :unprocessable_entity}
            end
        end
    end
    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to root_path, notice: "Post was successfully destroyed."
    end
            
    private
    def strong_params
        params.require(:book).permit(:title, :author, :image_url, :status, :b_date, :r_date, :borrow)
    end
end
