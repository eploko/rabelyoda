#!/usr/bin/env ruby

class Hash
  def locale_diff(b)
    a = self
    (a.keys | b.keys).inject({}) do |diff, k|
      if a[k].respond_to?(:locale_diff) && b[k].respond_to?(:locale_diff)
        deeper_diff = a[k].locale_diff(b[k])
        diff[k] = deeper_diff if deeper_diff != {}
      else
        if !a.keys.include?(k)
          # omit extra strings
          # diff[k] = 'extra'
        elsif !b.keys.include?(k)
          diff[k] = '[pls translate]' + a[k]
        elsif b.keys.include?(k) && b[k] == a[k]
          diff[k] = '[pls translate]' + a[k]
        elsif b.keys.include?(k)
          # do nothing
        else
          # keep translated strings
          diff[k] = b[k]
        end
      end
      diff
    end
  end
end
