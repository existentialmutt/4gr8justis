class UpdateHarvestDataController < ApplicationController
  def create
    JobStatus.get.update state: "queued"
    LoadHarvestDataJob.perform_later
    redirect_to root_path
  end
end
