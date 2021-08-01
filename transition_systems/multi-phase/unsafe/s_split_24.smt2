(set-logic HORN)
(declare-fun inv (Int Int Int) Bool)
(assert (forall ((z0 Int) (y0 Int) (x0 Int))
  (=> (and (or (= x0 0) (= x0 1)) (or (= y0 0) (= y0 1)) (= z0 0))
      (inv x0 y0 z0))))
(assert (forall ((z1 Int) (y1 Int) (x1 Int) (z0 Int) (y0 Int) (x0 Int))
  (let ((a!1 (= z1 (ite (= (mod x0 2) (mod y0 2)) (+ 1 z0) z0))))
    (=> (and (inv x0 y0 z0) (= x1 (+ x0 2)) (= y1 (+ y0 3)) a!1) (inv x1 y1 z1)))))
(assert (forall ((z0 Int) (x0 Int) (y0 Int))
  (=> (and (inv x0 y0 z0) (> x0 400) (>= z0 100)) false)))
(check-sat)
