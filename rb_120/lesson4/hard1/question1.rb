class SecretFile
  def initialize(secret_data)
    @data = secret_data
    @security_logger = SecurityLogger.new
  end

  def data
    @security_logger.create_log_entry
    @data
  end
  
end

class SecurityLogger
  def create_log_entry
    # ... implementation omitted ...
  end
end