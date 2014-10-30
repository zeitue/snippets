;; Colorful print functions using ANSI escape codes
;; to print colorful text
;; http://en.wikipedia.org/wiki/ANSI_escape_code


(defconstant black 0)
(defconstant red 1)
(defconstant green 2)
(defconstant yellow 3)
(defconstant blue 4)
(defconstant magenta 5)
(defconstant cyan 6)
(defconstant white 7)

(defun color-print (color string)
  "Black: 0, Red: 1, Green: 2, Yellow: 3, Blue: 4, Magenta: 5, Cyan: 6, White: 7"
  (format t "~C[3~Dm~A~C[0m" #\ESC color string #\ESC))

(defun color-println (color string)
  "Just like color-print plus a newline"
  (color-print color string)
  (format t "~%"))
