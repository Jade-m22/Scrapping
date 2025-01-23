require_relative '../lib/app_mc'

require 'rspec'
require 'spec_helper'

describe "the get_townhall_email method" do
  it "should return the correct email for Avernes" do
    avernes_url = "https://lannuaire.service-public.fr/ile-de-france/val-d-oise/c23327b7-7798-43a7-9316-569727c7e278"
    expect(get_townhall_email(avernes_url)).to eq("mairie@avernes95.fr")
  end
end