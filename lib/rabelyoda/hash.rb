#!/usr/bin/env ruby

class Hash
  def locale_diff(b)
    a = self
    b = {} if b.nil?
    diff = {}
    a.keys.each do |k|
      if a[k].respond_to?(:locale_diff)
        deeper_diff = a[k].locale_diff(b[k])
        diff[k] = deeper_diff if deeper_diff != {}
      else
        if !b.keys.include?(k)
          diff[k] = '[pls translate]' + a[k]
        elsif b.keys.include?(k) && b[k] == a[k]
          diff[k] = '[pls translate]' + a[k]
        else
          # keep translated strings
          diff[k] = b[k]
        end
      end
    end
    diff
  end
end
