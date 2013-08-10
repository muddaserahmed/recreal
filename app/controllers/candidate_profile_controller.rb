class CandidateProfileController < ApplicationController


  def show
  	@candidate = Candidate.find(params[:id])
  	@basic_profile = get_basic_profile
    @full_profile = get_full_profile
    @positions = get_positions
    @educations = get_educations
  end


def get_basic_profile
    bprofile = BasicProfile.find_by_candidate_id(@candidate.id)
    bprofile
  end

  def get_full_profile
    fprofile = FullProfile.find_by_candidate_id(@candidate.id)
    fprofile
  end

  def get_positions
    positions = Position.find_all_by_full_profile_id(@candidate.full_profile.id)
  	return positions
  end


  def get_educations
    educations = Education.find_all_by_full_profile_id(@candidate.full_profile.id)
    educations
  end




end
