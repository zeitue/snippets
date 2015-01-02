(defun my-round (value places)
  (let (( multiple (expt 10 places)))
    (/ (truncate (+ (* value multiple)
                    (if (> value 0) 0.5 -0.5))) multiple)))
