(set-logic HORN)
(declare-fun inv (Int Int) Bool)
(assert (forall ((y0 Int) (x0 Int)) (=> (= x0 0) (inv x0 y0))))
(assert (forall ((y1 Int) (x1 Int) (y0 Int) (x0 Int))
  (let ((a!1 (= x1 (ite (< (div x0 5) 200) (+ x0 1) (+ x0 5)))))
  (let ((a!2 (and (inv x0 y0) a!1 (= y1 (ite (= x0 1000) 0 y0)))))
    (=> a!2 (inv x1 y1))))))
(assert (forall ((y0 Int) (x0 Int))
  (=> (and (inv x0 y0) (>= x0 2000) (= y0 0)) false)))
(check-sat)
