User should be able to
    -login and logout
    - post 
    - post should have a picture
    - others can comment on the post
    - others can like the post
    - user can have many other user in their circle
    - user can join many other users circle

    
    ######Model ideas


    User 

        - username
        - email
        - password

        ### Relationship
        has many: authored_posts
        has_many: circler_users through: circler_circling 
        has_many: circling_users through: circler_circling
        has_many: comments
        has_many: commented_posts through: comment
        has_many: likes
        has_many: liked_posts through: likes 
        

    Post 
        - title
        - description
        - location
        - image

        ### Relationship
        belongs_to :author classname: :user
        has_many :comments
        has_many :commented_users through: comment
        has_many :likes
        has_many :likers through: likes foreign_key: user_id


    Comment 
        - body
        
        ### Relationship

        belongs_to :user
        belongs_to :post


    circler_circling 

    belongs_to :circler_user 
    belongs_to : circling_user


    Likes
    belongs_to :post
    belongs_to :user
