=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.9
Contact: apihelp@mandrill.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class MessagesApi
    attr_accessor :api_client

    attr_accessor :api_key

    def initialize(api_key = '', api_client = ApiClient.default)
      @api_key = api_key
      @api_client = api_client
    end
    # Cancel scheduled email
    # Cancels a scheduled email.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse20032>]
    def cancel_scheduled(body = {}, opts = {})
      data = cancel_scheduled_with_http_info(body, opts)
      data
    end

    # Cancel scheduled email
    # Cancels a scheduled email.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20032>, Fixnum, Hash)>] Array<InlineResponse20032> data, response status code and response headers
    def cancel_scheduled_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/messages/cancel-scheduled'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Get message content
    # Get the full content of a recently sent message.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20030]
    def content(body = {}, opts = {})
      data = content_with_http_info(body, opts)
      data
    end

    # Get message content
    # Get the full content of a recently sent message.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20030, Fixnum, Hash)>] InlineResponse20030 data, response status code and response headers
    def content_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/messages/content'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Get message info
    # Get the information for a single recently sent message.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20029]
    def info(body = {}, opts = {})
      data = info_with_http_info(body, opts)
      data
    end

    # Get message info
    # Get the information for a single recently sent message.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20029, Fixnum, Hash)>] InlineResponse20029 data, response status code and response headers
    def info_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/messages/info'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # List scheduled emails
    # Queries your scheduled emails.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse20032>]
    def list_scheduled(body = {}, opts = {})
      data = list_scheduled_with_http_info(body, opts)
      data
    end

    # List scheduled emails
    # Queries your scheduled emails.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20032>, Fixnum, Hash)>] Array<InlineResponse20032> data, response status code and response headers
    def list_scheduled_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/messages/list-scheduled'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Parse mime document
    # Parse the full MIME document for an email message, returning the content of the message broken into its constituent pieces.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20031]
    def parse(body = {}, opts = {})
      data = parse_with_http_info(body, opts)
      data
    end

    # Parse mime document
    # Parse the full MIME document for an email message, returning the content of the message broken into its constituent pieces.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20031, Fixnum, Hash)>] InlineResponse20031 data, response status code and response headers
    def parse_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/messages/parse'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Reschedule email
    # Reschedules a scheduled email.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse20032>]
    def reschedule(body = {}, opts = {})
      data = reschedule_with_http_info(body, opts)
      data
    end

    # Reschedule email
    # Reschedules a scheduled email.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20032>, Fixnum, Hash)>] Array<InlineResponse20032> data, response status code and response headers
    def reschedule_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/messages/reschedule'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Search messages by date
    # Search recently sent messages and optionally narrow by date range, tags, senders, and API keys. If no date range is specified, results within the last 7 days are returned. This method may be called up to 20 times per minute. If you need the data more often, you can use /messages/info.json to get the information for a single message, or webhooks to push activity to your own application for querying.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse20027>]
    def search(body = {}, opts = {})
      data = search_with_http_info(body, opts)
      data
    end

    # Search messages by date
    # Search recently sent messages and optionally narrow by date range, tags, senders, and API keys. If no date range is specified, results within the last 7 days are returned. This method may be called up to 20 times per minute. If you need the data more often, you can use /messages/info.json to get the information for a single message, or webhooks to push activity to your own application for querying.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20027>, Fixnum, Hash)>] Array<InlineResponse20027> data, response status code and response headers
    def search_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/messages/search'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Search messages by hour
    # Search the content of recently sent messages and return the aggregated hourly stats for matching messages.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse20028>]
    def search_time_series(body = {}, opts = {})
      data = search_time_series_with_http_info(body, opts)
      data
    end

    # Search messages by hour
    # Search the content of recently sent messages and return the aggregated hourly stats for matching messages.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20028>, Fixnum, Hash)>] Array<InlineResponse20028> data, response status code and response headers
    def search_time_series_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/messages/search-time-series'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Send new message
    # Send a new transactional message through the Transactional API.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse20025>]
    def send(body = {}, opts = {})
      data = send_with_http_info(body, opts)
      data
    end

    # Send new message
    # Send a new transactional message through the Transactional API.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20025>, Fixnum, Hash)>] Array<InlineResponse20025> data, response status code and response headers
    def send_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/messages/send'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Send mime document
    # Take a raw MIME document for a message, and send it exactly as if it were sent through the Transactional API's SMTP servers.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def send_raw(body = {}, opts = {})
      data = send_raw_with_http_info(body, opts)
      data
    end

    # Send mime document
    # Take a raw MIME document for a message, and send it exactly as if it were sent through the Transactional API&#39;s SMTP servers.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def send_raw_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/messages/send-raw'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Send using message template
    # Send a new transactional message through the Transactional API using a template.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse20026>]
    def send_template(body = {}, opts = {})
      data = send_template_with_http_info(body, opts)
      data
    end

    # Send using message template
    # Send a new transactional message through the Transactional API using a template.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20026>, Fixnum, Hash)>] Array<InlineResponse20026> data, response status code and response headers
    def send_template_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/messages/send-template'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
  end
end
