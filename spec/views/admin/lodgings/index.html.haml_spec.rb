require 'spec_helper'

describe 'admin/lodgings/index' do
  it 'renders lodgings list' do
    @conference = create(:conference)
    @conference.venue = create(:venue)
    @conference.venue.lodgings << create(:lodging, venue: @conference.venue)
    assign :venue, @conference.venue
    render
    expect(rendered).to include('Example Hotel')
  end
end
