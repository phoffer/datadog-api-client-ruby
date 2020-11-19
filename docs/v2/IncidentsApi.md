# DatadogAPIClient::V2::IncidentsApi

All URIs are relative to *https://api.datadoghq.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_incident**](IncidentsApi.md#create_incident) | **POST** /api/v2/incidents | Create an incident
[**delete_incident**](IncidentsApi.md#delete_incident) | **DELETE** /api/v2/incidents/{incident_id} | Delete an existing incident
[**get_incident**](IncidentsApi.md#get_incident) | **GET** /api/v2/incidents/{incident_id} | Get the details of an incident
[**list_incidents**](IncidentsApi.md#list_incidents) | **GET** /api/v2/incidents | Get a list of incidents
[**update_incident**](IncidentsApi.md#update_incident) | **PATCH** /api/v2/incidents/{incident_id} | Update an existing incident



## create_incident

> IncidentResponse create_incident(body)

Create an incident

Create an incident.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::IncidentsApi.new
body = DatadogAPIClient::V2::IncidentCreateRequest.new # IncidentCreateRequest | Incident payload.

begin
  #Create an incident
  result = api_instance.create_incident(body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling IncidentsApi->create_incident: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IncidentCreateRequest**](IncidentCreateRequest.md)| Incident payload. | 

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_incident

> delete_incident(incident_id)

Delete an existing incident

Deletes an existing incident from the users organization.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::IncidentsApi.new
incident_id = 'incident_id_example' # String | The UUID the incident.

begin
  #Delete an existing incident
  api_instance.delete_incident(incident_id)
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling IncidentsApi->delete_incident: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incident_id** | **String**| The UUID the incident. | 

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident

> IncidentResponse get_incident(incident_id, opts)

Get the details of an incident

Get the details of an incident by `incident_id`.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::IncidentsApi.new
incident_id = 'incident_id_example' # String | The UUID the incident.
opts = {
  include: ['include_example'] # Array<String> | Specifies which types of related objects should be included in the response.
}

begin
  #Get the details of an incident
  result = api_instance.get_incident(incident_id, opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling IncidentsApi->get_incident: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incident_id** | **String**| The UUID the incident. | 
 **include** | [**Array&lt;String&gt;**](String.md)| Specifies which types of related objects should be included in the response. | [optional] 

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incidents

> IncidentsResponse list_incidents(opts)

Get a list of incidents

Get all incidents for the user's organization.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::IncidentsApi.new
opts = {
  include: ['include_example'], # Array<String> | Specifies which types of related objects should be included in the response.
  page_size: 10, # Integer | Size for a given page.
  page_offset: 0 # Integer | Specific offset to use as the beginning of the returned page.
}

begin
  #Get a list of incidents
  result = api_instance.list_incidents(opts)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling IncidentsApi->list_incidents: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | [**Array&lt;String&gt;**](String.md)| Specifies which types of related objects should be included in the response. | [optional] 
 **page_size** | **Integer**| Size for a given page. | [optional] [default to 10]
 **page_offset** | **Integer**| Specific offset to use as the beginning of the returned page. | [optional] [default to 0]

### Return type

[**IncidentsResponse**](IncidentsResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_incident

> IncidentResponse update_incident(incident_id, body)

Update an existing incident

Updates an incident. Provide only the attributes that should be updated as this request is a partial update.

### Example

```ruby
# load the gem
require 'datadog_api_client/v2'
# setup authorization
DatadogAPIClient::V2.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V2::IncidentsApi.new
incident_id = 'incident_id_example' # String | The UUID the incident.
body = DatadogAPIClient::V2::IncidentUpdateRequest.new # IncidentUpdateRequest | Incident Payload.

begin
  #Update an existing incident
  result = api_instance.update_incident(incident_id, body)
  p result
rescue DatadogAPIClient::V2::ApiError => e
  puts "Exception when calling IncidentsApi->update_incident: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incident_id** | **String**| The UUID the incident. | 
 **body** | [**IncidentUpdateRequest**](IncidentUpdateRequest.md)| Incident Payload. | 

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [appKeyAuth](../README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
