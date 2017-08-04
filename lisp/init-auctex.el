;;;;;;;;;;;;;;;;;
;auctex
;;;;;;;;;;;;;;;;;

(setq TeX-auto-save t)
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t     ; remove all tabs before saving
                  TeX-engine 'xelatex       ; use xelatex default
                  TeX-show-compilation nil) ; display compilation windows
            (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
;;            (setq TeX-save-query nil)
            (imenu-add-menubar-index)))
; XeLaTeX
(add-hook 'LaTeX-mode-hook (lambda()
    (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
    (setq TeX-command-default "XeLaTeX")
    (setq TeX-save-query  nil )
    (setq TeX-show-compilation t)
    ))

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2015/bin/x86_64-linux"))  
(setq exec-path (append exec-path '("/usr/local/texlive/2015/bin/x86_64-linux"))) 

(provide 'init-auctex)