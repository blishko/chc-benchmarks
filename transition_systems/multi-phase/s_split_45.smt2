(set-logic HORN)
(declare-fun inv (Int Int Int) Bool)
(assert (forall ((z0 Int) (y0 Int) (x0 Int)) (=> (= x0 0) (inv x0 y0 z0))))
(assert (forall ((z1 Int) (y1 Int) (x1 Int) (z0 Int) (x0 Int) (y0 Int))
  (let ((a!1 (= y1 (ite (>= x0 765552) (ite (>= x0 865552) y0 (+ y0 1)) 0)))
        (a!2 (= z1 (ite (>= x0 663258) (ite (>= x0 763258) z0 (+ z0 1)) 0))))
    (=> (and (inv x0 y0 z0) (= x1 (+ 1 x0)) a!1 a!2) (inv x1 y1 z1)))))
(assert (forall ((z0 Int) (y0 Int) (x0 Int))
  (=> (and (inv x0 y0 z0) (>= x0 965552) (not (= y0 z0))) false)))
(check-sat)
