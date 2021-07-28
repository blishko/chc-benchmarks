(set-logic HORN)
(declare-fun inv (Int Int) Bool)
(assert (forall ((z0 Int) (x0 Int)) (=> (and (= x0 1) (= z0 0)) (inv x0 z0))))
(assert (forall ((z1 Int) (x1 Int) (x0 Int) (z0 Int))
  (let ((a!1 (= z1 (ite (= (mod x0 3) 1) (+ z0 x0) (- z0 x0)))))
    (=> (and (inv x0 z0) (= x1 (- x0)) a!1) (inv x1 z1)))))
(assert (forall ((z0 Int) (x0 Int)) (=> (and (inv x0 z0) (not (>= z0 0))) false)))
(check-sat)
