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
