(require 'polymode)

(define-hostmode poly-go-hostmode
  :mode 'go-mode)

(define-innermode poly-go-templ-innermode
  :mode 'html-mode
  :head-matcher "^templ .*{\n"
  :tail-matcher "^}"
  :head-mode 'host
  :tail-mode 'host)

(define-polymode poly-templ-mode
  :hostmode 'poly-go-hostmode
  :innermodes '(poly-go-templ-innermode))
