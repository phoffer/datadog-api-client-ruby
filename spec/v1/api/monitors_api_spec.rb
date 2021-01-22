=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for DatadogAPIClient::V1::MonitorsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MonitorsApi' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V1::MonitorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MonitorsApi' do
    it 'should create an instance of MonitorsApi' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V1::MonitorsApi)
    end
  end

  # unit tests for check_can_delete_monitor
  # Check if a monitor can be deleted
  # Check if the given monitors can be deleted.
  # @param monitor_ids The IDs of the monitor to check.
  # @param [Hash] opts the optional parameters
  # @return [CheckCanDeleteMonitorResponse]
  describe 'check_can_delete_monitor test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_monitor
  # Create a monitor
  # Create a monitor using the specified options.  #### Monitor Types  The type of monitor chosen from:  - anomaly: &#x60;query alert&#x60; - APM: &#x60;query alert&#x60; or &#x60;trace-analytics alert&#x60; - composite: &#x60;composite&#x60; - custom: &#x60;service check&#x60; - event: &#x60;event alert&#x60; - forecast: &#x60;query alert&#x60; - host: &#x60;service check&#x60; - integration: &#x60;query alert&#x60; or &#x60;service check&#x60; - live process: &#x60;process alert&#x60; - logs: &#x60;log alert&#x60; - metric: &#x60;metric alert&#x60; - network: &#x60;service check&#x60; - outlier: &#x60;query alert&#x60; - process: &#x60;service check&#x60; - rum: &#x60;rum alert&#x60; - watchdog: &#x60;event alert&#x60;  #### Query Types  **Metric Alert Query**  Example: &#x60;time_aggr(time_window):space_aggr:metric{tags} [by {key}] operator #&#x60;  - &#x60;time_aggr&#x60;: avg, sum, max, min, change, or pct_change - &#x60;time_window&#x60;: &#x60;last_#m&#x60; (with &#x60;#&#x60; being 5, 10, 15, or 30) or &#x60;last_#h&#x60;(with &#x60;#&#x60; being 1, 2, or 4), or &#x60;last_1d&#x60; - &#x60;space_aggr&#x60;: avg, sum, min, or max - &#x60;tags&#x60;: one or more tags (comma-separated), or * - &#x60;key&#x60;: a &#39;key&#39; in key:value tag syntax; defines a separate alert for each tag in the group (multi-alert) - &#x60;operator&#x60;: &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;&#x3D;, or !&#x3D; - &#x60;#&#x60;: an integer or decimal number used to set the threshold  If you are using the &#x60;_change_&#x60; or &#x60;_pct_change_&#x60; time aggregator, instead use &#x60;change_aggr(time_aggr(time_window), timeshift):space_aggr:metric{tags} [by {key}] operator #&#x60; with:  - &#x60;change_aggr&#x60; change, pct_change - &#x60;time_aggr&#x60; avg, sum, max, min [Learn more](https://docs.datadoghq.com/monitors/monitor_types/#define-the-conditions) - &#x60;time_window&#x60; last\\_#m (1, 5, 10, 15, or 30), last\\_#h (1, 2, or 4), or last_#d (1 or 2) - &#x60;timeshift&#x60; #m_ago (5, 10, 15, or 30), #h_ago (1, 2, or 4), or 1d_ago  Use this to create an outlier monitor using the following query: &#x60;avg(last_30m):outliers(avg:system.cpu.user{role:es-events-data} by {host}, &#39;dbscan&#39;, 7) &gt; 0&#x60;  **Service Check Query**  Example: &#x60;\&quot;check\&quot;.over(tags).last(count).count_by_status()&#x60;  - **&#x60;check&#x60;** name of the check, e.g. &#x60;datadog.agent.up&#x60; - **&#x60;tags&#x60;** one or more quoted tags (comma-separated), or \&quot;*\&quot;. e.g.: &#x60;.over(\&quot;env:prod\&quot;, \&quot;role:db\&quot;)&#x60; - **&#x60;count&#x60;** must be at &gt;&#x3D; your max threshold (defined in the &#x60;options&#x60;). e.g. if you want to notify on 1 critical, 3 ok and 2 warn statuses count should be 3. It is limited to 100.  **Event Alert Query**  Example: &#x60;events(&#39;sources:nagios status:error,warning priority:normal tags: \&quot;string query\&quot;&#39;).rollup(\&quot;count\&quot;).last(\&quot;1h\&quot;)\&quot;&#x60;  - **&#x60;event&#x60;**, the event query string: - **&#x60;string_query&#x60;** free text query to match against event title and text. - **&#x60;sources&#x60;** event sources (comma-separated). - **&#x60;status&#x60;** event statuses (comma-separated). Valid options: error, warn, and info. - **&#x60;priority&#x60;** event priorities (comma-separated). Valid options: low, normal, all. - **&#x60;host&#x60;** event reporting host (comma-separated). - **&#x60;tags&#x60;** event tags (comma-separated). - **&#x60;excluded_tags&#x60;** excluded event tags (comma-separated). - **&#x60;rollup&#x60;** the stats roll-up method. &#x60;count&#x60; is the only supported method now. - **&#x60;last&#x60;** the timeframe to roll up the counts. Examples: 60s, 4h. Supported timeframes: s, m, h and d. This value should not exceed 48 hours.  **Process Alert Query**  Example: &#x60;processes(search).over(tags).rollup(&#39;count&#39;).last(timeframe) operator #&#x60;  - **&#x60;search&#x60;** free text search string for querying processes. Matching processes match results on the [Live Processes](https://docs.datadoghq.com/infrastructure/process/?tab&#x3D;linuxwindows) page. - **&#x60;tags&#x60;** one or more tags (comma-separated) - **&#x60;timeframe&#x60;** the timeframe to roll up the counts. Examples: 60s, 4h. Supported timeframes: s, m, h and d - **&#x60;operator&#x60;** &lt;, &lt;&#x3D;, &gt;, &gt;&#x3D;, &#x3D;&#x3D;, or !&#x3D; - **&#x60;#&#x60;** an integer or decimal number used to set the threshold  **Logs Alert Query**  Example: &#x60;logs(query).index(index_name).rollup(rollup_method[, measure]).last(time_window) operator #&#x60;  - **&#x60;query&#x60;** The search query - following the [Log search syntax](https://docs.datadoghq.com/logs/search_syntax/). - **&#x60;index_name&#x60;** For multi-index organizations, the log index in which the request is performed. - **&#x60;rollup_method&#x60;** The stats roll-up method - supports &#x60;count&#x60;, &#x60;avg&#x60; and &#x60;cardinality&#x60;. - **&#x60;measure&#x60;** For &#x60;avg&#x60; and cardinality &#x60;rollup_method&#x60; - specify the measure or the facet name you want to use. - **&#x60;time_window&#x60;** #m (5, 10, 15, or 30), #h (1, 2, or 4, 24) - **&#x60;operator&#x60;** &#x60;&lt;&#x60;, &#x60;&lt;&#x3D;&#x60;, &#x60;&gt;&#x60;, &#x60;&gt;&#x3D;&#x60;, &#x60;&#x3D;&#x3D;&#x60;, or &#x60;!&#x3D;&#x60;. - **&#x60;#&#x60;** an integer or decimal number used to set the threshold.  **Composite Query**  Example: &#x60;12345 &amp;&amp; 67890&#x60;, where &#x60;12345&#x60; and &#x60;67890&#x60; are the IDs of non-composite monitors  * **&#x60;name&#x60;** [*required*, *default* &#x3D; **dynamic, based on query**]: The name of the alert. * **&#x60;message&#x60;** [*required*, *default* &#x3D; **dynamic, based on query**]: A message to include with notifications for this monitor. Email notifications can be sent to specific users by using the same &#39;@username&#39; notation as events. * **&#x60;tags&#x60;** [*optional*, *default* &#x3D; **empty list**]: A list of tags to associate with your monitor. When getting all monitor details via the API, use the &#x60;monitor_tags&#x60; argument to filter results by these tags. It is only available via the API and isn&#39;t visible or editable in the Datadog UI.
  # @param body Create a monitor request body.
  # @param [Hash] opts the optional parameters
  # @return [Monitor]
  describe 'create_monitor test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_monitor
  # Delete a monitor
  # Delete the specified monitor
  # @param monitor_id The ID of the monitor.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :force Delete the monitor even if it&#39;s referenced by other resources (e.g. SLO, composite monitor).
  # @return [DeletedMonitor]
  describe 'delete_monitor test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_monitor
  # Get a monitor&#39;s details
  # Get details about the specified monitor from your organization.
  # @param monitor_id The ID of the monitor
  # @param [Hash] opts the optional parameters
  # @option opts [String] :group_states When specified, shows additional information about the group states. Choose one or more from &#x60;all&#x60;, &#x60;alert&#x60;, &#x60;warn&#x60;, and &#x60;no data&#x60;.
  # @return [Monitor]
  describe 'get_monitor test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_monitors
  # Get all monitor details
  # Get details about the specified monitor from your organization.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :group_states When specified, shows additional information about the group states. Choose one or more from &#x60;all&#x60;, &#x60;alert&#x60;, &#x60;warn&#x60;, and &#x60;no data&#x60;.
  # @option opts [String] :name A string to filter monitors by name.
  # @option opts [String] :tags A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope. For example, &#x60;host:host0&#x60;.
  # @option opts [String] :monitor_tags A comma separated list indicating what service and/or custom tags, if any, should be used to filter the list of monitors. Tags created in the Datadog UI automatically have the service key prepended. For example, &#x60;service:my-app&#x60;.
  # @option opts [Boolean] :with_downtimes If this argument is set to true, then the returned data includes all current downtimes for each monitor.
  # @option opts [Integer] :id_offset Monitor ID offset.
  # @option opts [Integer] :page The page to start paginating from. If this argument is not specified, the request returns all monitors without pagination.
  # @option opts [Integer] :page_size The number of monitors to return per page. If the page argument is not specified, the default behavior returns all monitors without a &#x60;page_size&#x60; limit. However, if page is specified and &#x60;page_size&#x60; is not, the argument defaults to 100.
  # @return [Array<Monitor>]
  describe 'list_monitors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_monitor
  # Edit a monitor
  # Edit the specified monitor.
  # @param monitor_id The ID of the monitor.
  # @param body Edit a monitor request body.
  # @param [Hash] opts the optional parameters
  # @return [Monitor]
  describe 'update_monitor test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for validate_monitor
  # Validate a monitor
  # Validate the monitor provided in the request.
  # @param body Monitor request object
  # @param [Hash] opts the optional parameters
  # @return [Monitor]
  describe 'validate_monitor test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
