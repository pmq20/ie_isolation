module IeIsolation
  module Helpers
    def is_ie;request.env['HTTP_USER_AGENT'].downcase.index('msie')!=nil;end
    def is_ie5;request.env['HTTP_USER_AGENT'].downcase.index('msie 6')!=nil;end
    def is_ie6;request.env['HTTP_USER_AGENT'].downcase.index('msie 6')!=nil;end
    def is_ie7;request.env['HTTP_USER_AGENT'].downcase.index('msie 7')!=nil;end
    def is_ie8;request.env['HTTP_USER_AGENT'].downcase.index('msie 8')!=nil;end
    def is_ie9;request.env['HTTP_USER_AGENT'].downcase.index('msie 9')!=nil;end
    def is_ie10;request.env['HTTP_USER_AGENT'].downcase.index('msie 10')!=nil;end
  end
end
ActionView::Base.send(:include, IeIsolation::Helpers)
