# encoding: UTF-8
require_relative '../spec_helper'
require 'nepal_date_converter'

describe NepalDateConverter do

  describe "#convert_to_ad_date" do
    before do
      @napali_and_english_dates = [
        ['2070-6-13','2013-09-29'],
        ['2002-2-9','1945-05-22']
        ]
    end

    it "should convert Napali dates to AD dates" do
      @napali_and_english_dates.each do |nepali_date,english_date|
        NepalDateConverter.convert_to_ad_date(nepali_date).should == english_date
      end
    end
  end

  describe "#days_between_napali_dates" do
    it "should calculate correctly" do
      NepalDateConverter.days_between_nepali_dates('2070-6-13','2070-6-11').should == 2
      NepalDateConverter.days_between_nepali_dates('2070-6-13','2069-5-4').should == 405
      NepalDateConverter.days_between_nepali_dates('2069-5-4','2070-6-13').should == -405
      NepalDateConverter.days_between_nepali_dates('2070-6-13','2036-8-26').should == 12345
      NepalDateConverter.days_between_nepali_dates('2036-8-26','2070-6-13').should == -12345
    end
  end
end