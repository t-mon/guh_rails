require 'spec_helper'

describe "Introspects" do
  it "should be able to get introspect information from guh core" do
    get api_v1_introspect_path(format: 'json')
    response.status.should be(200)
    
    json_response = JSON.parse(response.body)
    
    json_response.keys.length.should be > 0
  end
end
