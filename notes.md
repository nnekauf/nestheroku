Project Notes:

    Title: Nest

    Objective: 
        - Create a web application that allows a user to reach certain goals that they have set for themselves through reading books that have a theme that is in line with achieving that goal. 
        - Users will be able to keep track of books read, currently reading, and books to read in the future through having an online bookshelf
        - Users will be able to see and interact with other user's bookshelves
        - Hope to integrate with GoogleBooks Api to have access to many books
        - Users will log in via facebook/google (google is the goal but facebook is backup)

    Associaions:
        Reader
            has_many :goals #the user can have multiple goals that they'd like to achieve
            has_many :books, through: :goals  #the user has many books through the goals they have
        Goal 
            belongs_to :reader #a goal belongs to the person who sets it
            has_many :plots #a goal can be acieved through different scenarios/plots
            has_many :books, through: :plots #a goal is associated with different books through the plots that the book has
        Plot 
            belongs_to :goal # a plot achieves one main goal
            belongs_to :book  # a plot must belong to the book it is about
        Book 
            has_many :plots #a book has different events that happen creating multiple plots whether it is the main plot or not.
            has_many :goals, through: :plots #it is through the plot of the book that many goals can be achieved
            has_many :readers, through: :goals #through the goals of the book, it can have many users who have goals that are in line with the book/

        Atrributes
            Reader
                username
                email
                passsword
            Goal
                description
                completion_date
                reader_id
            Plot
                description
                goal_id
                book_id
            Book
                title
                author

        Validations
            Reader
                username: validates_uniqueness_of, validates_presence_of 
                email: validates_uniqueness_of, validates_presence_of 
                passsword:  has_secure_password
            Goal
                description: validates_presence_of should be at least 10 letters
                completion_date: validates_presence_of
                reader_id
            Plot
                description validates_presence_of
                goal_id
                book_id
            Book
                title validates_presence_of
                author validates_presence_of

        Things to do
            1. Set up Goals routes
            2. Set up users
            3. Set up books
            4. set up plot
            5. make book and plot user submittable at first, if more time, try to integrate api
Rails resources https://docs.google.com/document/d/1BeCftRHAaUS4Qn73dH-kHvbCbWKNEbnMLhMUyFjYlgo/edit
add .env.example file