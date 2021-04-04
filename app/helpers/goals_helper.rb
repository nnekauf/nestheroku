module GoalsHelper

    def show_books_title(g, index)
        if index
            g.books.each do |b|
                b.title
            end 
        end
    end
  
  
    def form_url_helper(book)
      book ? book_goals_path(book) : goals_path
    end
  
  end
  