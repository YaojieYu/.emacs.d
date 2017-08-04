;;org-ref
(require 'org-ref)

(setq reftex-default-bibliography '("/home/yu/org/knowledge/writing/bib/research.bib"))

;; see org-ref for use of these variables
(setq org-ref-bibliography-notes "/home/yu/org/knowledge/writing/bib/test.org"
      org-ref-default-bibliography '("/home/yu/org/knowledge/writing/bib/research.bib")
      org-ref-pdf-directory "/home/yu/org/knowledge/writing/bib/")

(setq bibtex-completion-bibliography "/home/yu/org/knowledge/writing/bib/research.bib"
      bibtex-completion-library-path "/home/yu/org/knowledge/writing/bib/"
      bibtex-completion-notes-path "/home/yu/org/knowledge/writing/bib/")

;; open pdf with system pdf viewer (works on mac)
;;(setq bibtex-completion-pdf-open-function
;;  (lambda (fpath)
;;    (start-process "open" "*open*" "open" fpath)))

(provide 'init-org-ref)
