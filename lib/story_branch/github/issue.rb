# frozen_string_literal: true

require_relative './label'
require_relative './milestone'

module StoryBranch
  module Github
    # GitHub Issue representation
    class Issue
      attr_accessor :title, :id, :html_url

      def initialize(blanket_story, repo)
        @repo = repo
        @story = blanket_story
        @title = blanket_story.title
        @id = blanket_story.number
        @labels = blanket_story.labels.map { |label| Label.new(label) }
        @milestone = Milestone.new(blanket_story.milestone) if blanket_story.milestone
        @html_url = blanket_story.html_url
      end

      def update_state
        puts 'What to do in github for this?'
      end

      def to_s
        "#{@id} - #{@title} [#{@milestone}]"
      end

      def dashed_title
        StoryBranch::StringUtils.normalised_branch_name @title
      end
    end
  end
end
