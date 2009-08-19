if defined?(Footnotes)
  Footnotes::Filter.notes = [ :assigns, :session, :cookies, :params, :filters, :routes, :env, :queries, :log, :general ]
end
