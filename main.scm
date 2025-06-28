(require "helix/commands.scm")
(require "helix/editor.scm")
(provide switcheroo)

(define (get-doc-path) (editor-document->path (editor->doc-id (editor-focus))))
(define (remove-from-end str chars) (substring str 0 (- (string-length str) 1 chars)))

;;@doc
;; Switches between `.cpp` and `.h` files with the same base name
(define (switcheroo) (let ([doc-path (get-doc-path)])
  (unless (eq? doc-path #f)
    (if (ends-with? doc-path ".cpp") (open (string-append (remove-from-end doc-path 3) ".h")))
    (if (ends-with? doc-path ".h")   (open (string-append (remove-from-end doc-path 1) ".cpp")))
  )
))
