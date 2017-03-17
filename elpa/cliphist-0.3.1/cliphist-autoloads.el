;;; cliphist-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "cliphist" "cliphist.el" (22334 27967 157960
;;;;;;  462000))
;;; Generated autoloads from cliphist.el

(autoload 'cliphist-read-items "cliphist" "\


\(fn)" t nil)

(autoload 'cliphist-copy-to-clipboard "cliphist" "\
Copy STR into clipboard.

\(fn STR)" nil nil)

(autoload 'cliphist-paste-item "cliphist" "\
Paste selected item into current buffer.

\(fn)" t nil)

(autoload 'cliphist-select-item "cliphist" "\
Select one item from clipboard history.
NUM is passed to `cliphist-select-item-callback'.

\(fn &optional NUM)" t nil)

;;;***

;;;### (autoloads nil nil ("cliphist-flycut.el" "cliphist-parcellite.el"
;;;;;;  "cliphist-pkg.el") (22334 27967 328585 23000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; cliphist-autoloads.el ends here
