Chewy.urgent_update = true
Chewy.logger = Logger.new(Rails.root.join('log/elasticsearch.log')).tap do |l|
  l.formatter = ->(severity, datetime, progname, msg){ "[#{datetime}] #{severity}\t#{msg}\n" }
end if Rails.env.development?
