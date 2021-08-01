(set-logic HORN)
(declare-fun inv (Int) Bool)
(assert (forall ((x0 Int)) (=> (= x0 0) (inv x0))))
(assert (forall ((x1 Int) (x0 Int))
  (let ((a!1 (= x1 (ite (< (div x0 5) 200) (+ x0 1) (+ x0 5)))))
    (=> (and (inv x0) a!1) (inv x1)))))
(assert (forall ((x0 Int))
  (let ((a!1 (and (inv x0) (>= x0 2000) (= (mod x0 5) 0))))
    (=> a!1 false))))
(check-sat)
