module Refinery
  module Blogs
    module Admin
      class BlogsController < ::Refinery::AdminController

        crudify :'refinery/blogs/blog'

        private

        # Only allow a trusted parameter "white list" through.
        def blog_params
          params.require(:blog).permit(:title, :date, :photo_id, :blurb)
        end
      end
    end
  end
end
