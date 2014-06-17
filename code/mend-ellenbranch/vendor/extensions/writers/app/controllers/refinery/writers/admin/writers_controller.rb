module Refinery
  module Writers
    module Admin
      class WritersController < ::Refinery::AdminController

        crudify :'refinery/writers/writer',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
