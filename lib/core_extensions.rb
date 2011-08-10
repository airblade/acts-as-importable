# From http://weblog.jamisbuck.org/2007/4/6/faking-cursors-in-activerecord
class <<ActiveRecord::Base
  def each(limit=1000)
    rows = find(:all, :conditions => ["#{primary_key} > ?", 0], :limit => limit)
    while rows.any?
      rows.each { |record| yield record }
      rows = find(:all, :conditions => ["#{primary_key} > ?", rows.last.id], :limit => limit)
    end
    self
  end
end
