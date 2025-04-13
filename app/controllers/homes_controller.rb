class HomesController < ApplicationController
  allow_unauthenticated_access only: %i[ show ]
  def show
    @social_channels = SocialChannel.all
    @contributions = Contribution.all
  end

end
