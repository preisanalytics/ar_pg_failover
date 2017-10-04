require "active_record"
require "active_record/connection_adapters/abstract_adapter"
require "active_record/connection_adapters/statement_pool"

module ActiveRecord
  module ConnectionAdapters
    class PostgreSQLAdapter < AbstractAdapter
      class StatementPool < ConnectionAdapters::StatementPool
        private

        def dealloc(key)
          @connection.query "DEALLOCATE #{key}" if connection_active?
        rescue PG::Error
        end
      end
    end
  end
end
