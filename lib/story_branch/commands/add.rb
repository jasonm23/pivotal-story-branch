# frozen_string_literal: true

require_relative '../command'
require 'tty-config'
require 'tty-prompt'

module StoryBranch
  module Commands
    class Add < StoryBranch::Command
      def initialize(options)
        @options = options
        @config = init_config(ENV['HOME'])
      end

      def execute(input: $stdin, output: $stdout)
        create_global_config
        create_local_config
        output.puts 'Configuration added successfully'
      end

      private

      def create_local_config
        local_config = init_config('.')
        local_config.set(:project_id, value: project_id)
        local_config.write
      end

      def create_global_config
        api_key = prompt.ask 'Please provide the api key:'
        @config.set(project_id, :api_key, value: api_key)
        @config.write(force: true)
      end

      def project_id
        return @project_id if @project_id
        @project_id = prompt.ask "Please provide this project's id:"
        @project_id
      end

      def init_config(path)
        config = ::TTY::Config.new
        config.filename = '.story_branch'
        config.append_path path
        config.read if config.persisted?
        config
      end
    end
  end
end
