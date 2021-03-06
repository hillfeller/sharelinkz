class FavoriteMailer < ApplicationMailer
  default from: "hillfeller@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@fierce-refuge-9471.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@fierce-refuge-9471.example>"
    headers["References"] = "<post/#{post.id}@fierce-refuge-9471.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
