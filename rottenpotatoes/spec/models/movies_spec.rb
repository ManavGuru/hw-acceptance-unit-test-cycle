require 'rails_helper'
require 'support/action_controller_workaround'

describe Movie do
  describe '.find_similar_movies' do
    let!(:movie1) { FactoryGirl.create(:movie, title: 'Catch me if you can', director: 'Steven Spielberg') }
    let!(:movie2) { FactoryGirl.create(:movie, title: 'Seven', director: 'David Fincher') }
    let!(:movie3) { FactoryGirl.create(:movie, title: "Schindler's List", director: 'Steven Spielberg') }
    let!(:movie4) { FactoryGirl.create(:movie, title: "Stop") }

    context 'director exists' do

    end

    context 'director does not exist' do

    end
  end

  describe '.all_ratings' do
    it 'returns all ratings' do
      expect(Movie.all_ratings).to match(%w(G PG PG-13 R))
    end
  end
end