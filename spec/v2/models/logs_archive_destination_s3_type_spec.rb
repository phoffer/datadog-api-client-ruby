=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for DatadogAPIClient::V2::LogsArchiveDestinationS3Type
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe DatadogAPIClient::V2::LogsArchiveDestinationS3Type do
  let(:instance) { DatadogAPIClient::V2::LogsArchiveDestinationS3Type.new }

  describe 'test an instance of LogsArchiveDestinationS3Type' do
    it 'should create an instance of LogsArchiveDestinationS3Type' do
      expect(instance).to be_instance_of(DatadogAPIClient::V2::LogsArchiveDestinationS3Type)
    end
  end
end
