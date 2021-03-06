(set-logic HORN)
(declare-fun inv (Int Int Int Int) Bool)
(assert (forall ((w0 Int) (v0 Int) (z0 Int) (x0 Int))
  (=> (and (> x0 z0) (= v0 0) (= w0 0)) (inv x0 z0 v0 w0))))
(assert (forall ((w1 Int)
         (v1 Int)
         (z1 Int)
         (x1 Int)
         (w0 Int)
         (z0 Int)
         (x0 Int)
         (v0 Int))
  (let ((a!1 (and (inv x0 z0 v0 w0)
                  (= x1 (+ x0 1))
                  (= z1 (+ z0 2))
                  (= v1 (ite (< x0 z0) (+ v0 1) v0))
                  (= w1 (ite (< x0 z0) w0 (+ w0 1))))))
    (=> a!1 (inv x1 z1 v1 w1)))))
(assert (forall ((w0 Int) (v0 Int) (z0 Int) (x0 Int))
  (=> (and (inv x0 z0 v0 w0) (> v0 1000) (> w0 0)) false)))
(check-sat)
