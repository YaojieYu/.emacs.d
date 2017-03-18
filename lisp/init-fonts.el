(require 'cl)
;中文与英文字体设置
;; Setting English Font
(set-face-attribute
'default nil :font "Monaco 10")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font)
		  charset
		  (font-spec :family "文泉驿等宽微米黑" :size 12)))


;;(my-set-fontset
;; "fontset-startup"
;; '((latin "Monaco -10")       ;; 英文字体
;;   (han "文泉驿微米黑-12")   ;; 中文字体
;;   (nil "文泉驿微米黑-12"))) ;; 其它所有字符默认字体

;;(defun font-name-replace-size (font-name new-size)
;;  (let ((parts (split-string font-name "-")))
;;    (setcar (nthcdr 7 parts) (format "%d" new-size))
;;    (mapconcat 'identity parts "-")))


;;(defun increment-default-font-height (delta)
;;  "Adjust the default font height by DELTA on every frame.
;;The pixel size of the frame is kept (approximately) the same.
;;DELTA should be a multiple of 10, in the units used by the
;;:height face attribute."
;;  (let* ((new-height (+ (face-attribute 'default :height) delta))
;;         (new-point-height (/ new-height 10)))
;;    (dolist (f (frame-list))
;;      (with-selected-frame f
        ;; Latest 'set-frame-font supports a "frames" arg, but
        ;; we cater to Emacs 23 by looping instead.
;;        (set-frame-font (font-name-replace-size (face-font 'default)
;;                                                new-point-height)
;;                        t)))
;;    (set-face-attribute 'default nil :height new-height)
;;    (message "default font size is now %d" new-point-height)))

;;(defun increase-default-font-height ()
;;  (interactive)
;;  (increment-default-font-height 10))

;;(defun decrease-default-font-height ()
;;  (interactive)
;;  (increment-default-font-height -10))

(provide 'init-fonts)
