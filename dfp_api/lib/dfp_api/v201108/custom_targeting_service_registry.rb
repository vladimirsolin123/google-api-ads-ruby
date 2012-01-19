#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.1 on 2011-12-20 18:02:42.

require 'dfp_api/errors'

module DfpApi; module V201108; module CustomTargetingService
  class CustomTargetingServiceRegistry
    CUSTOMTARGETINGSERVICE_METHODS = {:perform_custom_targeting_key_action=>{:output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_custom_targeting_key_action_response"}, :input=>[{:type=>"CustomTargetingKeyAction", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_key_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}]}, :perform_custom_targeting_value_action=>{:output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_custom_targeting_value_action_response"}, :input=>[{:type=>"CustomTargetingValueAction", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_value_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}]}, :create_custom_targeting_keys=>{:output=>{:fields=>[{:type=>"CustomTargetingKey", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_custom_targeting_keys_response"}, :input=>[{:type=>"CustomTargetingKey", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:keys}]}, :update_custom_targeting_keys=>{:output=>{:fields=>[{:type=>"CustomTargetingKey", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_custom_targeting_keys_response"}, :input=>[{:type=>"CustomTargetingKey", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:keys}]}, :create_custom_targeting_values=>{:output=>{:fields=>[{:type=>"CustomTargetingValue", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_custom_targeting_values_response"}, :input=>[{:type=>"CustomTargetingValue", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :update_custom_targeting_values=>{:output=>{:fields=>[{:type=>"CustomTargetingValue", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_custom_targeting_values_response"}, :input=>[{:type=>"CustomTargetingValue", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :get_custom_targeting_keys_by_statement=>{:output=>{:fields=>[{:type=>"CustomTargetingKeyPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_custom_targeting_keys_by_statement_response"}, :input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}]}, :get_custom_targeting_values_by_statement=>{:output=>{:fields=>[{:type=>"CustomTargetingValuePage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_custom_targeting_values_by_statement_response"}, :input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}]}}
    CUSTOMTARGETINGSERVICE_TYPES = {:Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_changes}]}, :CustomTargetingValuePage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"CustomTargetingValue", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :"CustomTargetingKey.Type"=>{:fields=>[]}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :CustomTargetingKeyAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_key_action_type}], :abstract=>true}, :DeleteCustomTargetingKeys=>{:fields=>[], :base=>"CustomTargetingKeyAction"}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :"CustomTargetingValue.MatchType"=>{:fields=>[]}, :CustomTargetingKey=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:display_name}, {:type=>"CustomTargetingKey.Type", :min_occurs=>0, :max_occurs=>1, :name=>:type}]}, :DeleteCustomTargetingValues=>{:fields=>[], :base=>"CustomTargetingValueAction"}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :CustomTargetingKeyPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"CustomTargetingKey", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :CustomTargetingValueAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_value_action_type}], :abstract=>true}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :CustomTargetingValue=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_key_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:display_name}, {:type=>"CustomTargetingValue.MatchType", :min_occurs=>0, :max_occurs=>1, :name=>:match_type}]}}
    CUSTOMTARGETINGSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CUSTOMTARGETINGSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CUSTOMTARGETINGSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CUSTOMTARGETINGSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end