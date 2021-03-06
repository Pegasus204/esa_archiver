# frozen_string_literal: true

module EsaArchiver
  module UseCases
    class Archive
      def initialize(esa_port)
        @esa_port = esa_port
      end

      def call(category, elapsed_days)
        esa_port.find_expired_posts(category, days_ago(elapsed_days)).map do |expired_post|
          expired_post.category = expired_post.archived_category
          esa_port.update_post(expired_post, expired_post.created_by)
          { expired_post.number => 'Archived' }
        end
      end

      private

      attr_reader :esa_port

      def days_ago(day)
        date = Date.today - day.to_i
        "#{date.year}-#{date.month.to_s.rjust(2, '0')}-#{date.day.to_s.rjust(2, '0')}"
      end
    end
  end
end
