(set-logic HORN)
(declare-fun inv (Int Int) Bool)
(assert (forall ((z0 Int) (x0 Int)) (=> (and (= x0 0) (= z0 0)) (inv x0 z0))))
(assert (forall ((z1 Int) (x1 Int) (z0 Int) (x0 Int))
  (let ((a!1 (= x1 (ite (< (* x0 5) z0) (+ x0 1) (div x0 10))))
        (a!2 (= z1 (ite (< (* x0 5) z0) z0 (+ 1 z0)))))
    (=> (and (inv x0 z0) a!1 a!2) (inv x1 z1)))))
(assert (forall ((x0 Int) (z0 Int))
  (=> (and (inv x0 z0) (> z0 50) (not (> z0 x0))) false)))
(check-sat)
