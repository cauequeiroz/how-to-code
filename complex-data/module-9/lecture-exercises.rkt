;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname lecture-exercises) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; (listof Number) -> Number
;; sum the elements of a list
(check-expect (sum (list 1 2 3 4)) 10)

;(define (sum lon) 0) ; stub

(define (sum lon)
  (foldr + 0 lon))


;; Natural -> Natural
;; produce the sum of the first n natural numbers
(check-expect (sum-to 3) (+ 0 1 2))

;(define (sum-to n) 0) ; stub

(define (sum-to n)
  (foldr + 0 (build-list n identity)))


;; (listof Number) -> (listof Number)
;; produce list of each number in lon cubed
(check-expect (cube-all (list 1 2 3))
              (list (* 1 1 1) (* 2 2 2) (* 3 3 3)))

;(define (cube-all lon) empty) ;stub

(define (cube-all lon)
  (local [(define (pow-3 n) (expt n 3))]
    (map pow-3 lon)))

;; String (listof String) -> (listof String)
;; produce list of all elements of los prefixed by p
(check-expect (prefix-all "accio" (list "portkey" "broom"))
              (list "accio portkey" "accio broom"))

;(define (prefix-all p los) empty) ;stub

(define (prefix-all p los)
  (local [(define (add-accio item)
            (string-append p " " item))]
    (map add-accio los)))