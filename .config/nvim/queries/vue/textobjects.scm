((element) @element.outer)

((element
  (start_tag)
  .
  (_) @_start
  (_) @_end
  .
  (end_tag))
 (#make-range! "element.inner" @_start @_end))

((element
  (start_tag)
  .
  (_) @element.inner
  .
  (end_tag)))
