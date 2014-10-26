#lang racket
(require gigls/unsafe)

; Project: A Procedure Is Worth 1000 Pictures

; Sun Han
; Michael Owusu
; Leo Rojas
; Joey Saenz

; Professor Davis
; ComSci 151
; 11/27/2013

; Note: we will do our best to cite all of our code correctly, for safety reasons, however, we want to put out a blanket achknowledgement that a lot of our turtle procedures were influenced or came from Homework Assignment 5 and Exam 2 as well as turtle related labs.

; Variation 1:
; Gradients and Color Schemes

; All gradient code influence came from Laboratory: Building Images by Iterating Over Positions

;;; Procedure
;;;   gradient-red/black
;;; Parameters
;;;   height, pos integer
;;;   width, pos integer
;;; Purpose
;;;   creates a gradient background that blends from red to black
;;; Produces
;;;   background color
;;; Preconditions
;;;   none
;;; Postconditions
;;;   displays gradient
(define gradient-red/black
  (lambda (height width)
    (image-compute
     (lambda (col row)
       (rgb-new (* col (/ 256 width)) 0 0))
     height width)))

(define red/black-accomp (list "red" "crimson" "darkred" "orangered"))

;;; Procedure
;;;   gradient-green/black
;;; Parameters
;;;   height, pos integer
;;;   width, pos integer
;;; Purpose
;;;   creates a gradient background that blends from green to black
;;; Produces
;;;   background color
;;; Preconditions
;;;   none
;;; Postconditions
;;;   displays gradient
(define gradient-green/black
  (lambda (height width)
    (image-compute
     (lambda (col row)
       (rgb-new 0 (* col (/ 256 width)) 0))
     height width)))

(define green/black-accomp (list "springgreen" "darkcyan" "darkgreen" "forestgreen" "aquamarine" "green" "greenyellow" "lightcyan" "lightgreen" "lightseagreen" "lime" "limegreen" "mediumaquamarine" "mediumseagreen" "mediumspringgreen" "mintcream" "palegreen"))

;;; Procedure
;;;   gradient-blue/black
;;; Parameters
;;;   height, pos integer
;;;   width, pos integer
;;; Purpose
;;;   creates a gradient background that blends from blue to black
;;; Produces
;;;   background color
;;; Preconditions
;;;   none
;;; Postconditions
;;;   displays gradient
(define gradient-blue/black
  (lambda (height width)
    (image-compute
     (lambda (col row)
       (rgb-new 0 0 (* col (/ 256 width))))
     height width)))

(define blue/black-accomp (list "aliceblue" "aquamarine" "blue" "blueviolet" "aqua" "darkblue"))

;;; Procedure
;;;   gradient-teal/black
;;; Parameters
;;;   height, pos integer
;;;   width, pos integer
;;; Purpose
;;;   creates a gradient background that blends from teal to black
;;; Produces
;;;   background color
;;; Preconditions
;;;   none
;;; Postconditions
;;;   displays gradient
(define gradient-teal/black
  (lambda (height width)
    (image-compute
     (lambda (col row)
       (rgb-new 0 (* col (/ 256 width)) (* col (/ 256 width))))
     height width)))

(define teal/black-accomp (list "aliceblue" "aquamarine" "blue" "aqua" "darkblue"))

;;; Procedure
;;;   gradient-purple/black
;;; Parameters
;;;   height, pos integer
;;;   width, pos integer
;;; Purpose
;;;   creates a gradient background that blends from purple to black
;;; Produces
;;;   background color
;;; Preconditions
;;;   none
;;; Postconditions
;;;   displays gradient
(define gradient-purple/black
  (lambda (height width)
    (image-compute
     (lambda (col row)
       (rgb-new (* col (/ 256 width)) 0 (* col (/ 256 width))))
     height width)))

(define purple/black-accomp (list "blueviolet" "magenta" "darkviolet" "fuchsia" "violet"))

;;; Procedure
;;;   gradient-white/black
;;; Parameters
;;;   height, pos integer
;;;   width, pos integer
;;; Purpose
;;;   creates a gradient background that blends from white to black
;;; Produces
;;;   background color
;;; Preconditions
;;;   none
;;; Postconditions
;;;   displays gradient
(define gradient-white/black
  (lambda (height width)
    (image-compute
     (lambda (col row)
       (rgb-new (* col (/ 256 width)) (* col (/ 256 width)) (* col (/ 256 width))))
     height width)))

(define white/black-accomp (list "white" "black" "slategrey" "whitesmoke" "slategray" "silver" "darkslategray" "snow" "darkslategrey"))

;;; Procedure
;;;   gradient-mango
;;; Parameters
;;;   height, pos integer
;;;   width, pos integer
;;; Purpose
;;;   creates a gradient background that blends from green to yellow to red
;;; Produces
;;;   background color
;;; Preconditions
;;;   none
;;; Postconditions
;;;   displays gradient
(define gradient-mango
  (lambda (height width)
    (image-compute
     (lambda (col row)
       (rgb-new (* row (/ 256 height)) (* col (/ 256 width)) 0))
     height width)))

(define mango-accomp (list "green" "yellow" "red"))

;;; Procedure
;;;   gradient-dank
;;; Parameters
;;;   height, pos integer
;;;   width, pos integer
;;; Purpose
;;;   creates a gradient background that blends from purple to blue to red
;;; Produces
;;;   background color
;;; Preconditions
;;;   none
;;; Postconditions
;;;   displays gradient
(define gradient-dank
  (lambda (height width)
    (image-compute
     (lambda (col row)
       (rgb-new (* col (/ 256 width)) 0 (* row (/ 256 height))))
     height width)))

(define dank-accomp (list "purple" "blue" "red"))

;;; Procedure
;;;   gradient-fun
;;; Parameters
;;;   height, pos integer
;;;   width, pos integer
;;; Purpose
;;;   creates a gradient background that blends from green to purple to violet to aquamarine
;;; Produces
;;;   background color
;;; Preconditions
;;;   none
;;; Postconditions
;;;   displays gradient
(define gradient-fun
  (lambda (height width)
    (image-compute
     (lambda (col row)
       (rgb-new (* row (/ 256 height)) (* col (/ 256 width)) (* row (/ 256 height))))
     height width)))

(define fun-accomp (list "green" "purple" "violet" "aquamarine"))

;;; Procedure
;;;   gradient-murica
;;; Parameters
;;;   height, pos integer
;;;   width, pos integer
;;; Purpose
;;;   creates a gradient background that blends from red to white to blue
;;; Produces
;;;   background color
;;; Preconditions
;;;   none
;;; Postconditions
;;;   displays gradient
(define gradient-murica
  (lambda (height width)
    (image-compute
     (lambda (col row)
       (rgb-new (* row (/ 256 height)) (* col (/ 256 width)) (* col (/ 256 height))))
     height width)))

(define murica-accomp (list "red" "white" "blue"))

; Note: We named the gradients and color schemes based on the best way for us a group to remember them. Most are named accurately enough.



; Variation 2:
; Figures

; Note: The use of the name "Leo" in our procedure naming was at first spontaneous, however, it assumed the meaning of versions of our original code that could be drawn in our different color schemes.

; Figure 1
; The Creative Figure

; From Homework 5
(define turtle-polygon!
  (lambda (turtle side-length sides)
    (repeat sides (o (r-s turtle-turn! (/ 360 sides))
                     (r-s turtle-forward! side-length)) turtle)
    (turtle-up! turtle)
    (turtle-forward! turtle (* 2 side-length))
    (turtle-down! turtle)))

; Named creative because we thought it a particularly creative design.
(define creative-helper!
  (lambda (turtle side-length sides)
    (repeat sides (o (r-s turtle-turn! (/ 360 sides))
                     (r-s turtle-forward! side-length)) turtle)))

; From Homework 5
(define turtle-centered-polygon!
  (lambda (turtle radius sides)
    (let ([interior-angle (/ (* 180 (- sides 2)) sides)])
      (turtle-up! turtle)
      (turtle-forward! turtle radius)
      (turtle-down! turtle)
      (turtle-turn! turtle (- 180 (/ interior-angle 2)))
      (creative-helper! turtle (* 2 radius (sin (/ pi sides))) sides)
      (turtle-turn! turtle (/ interior-angle 2))
      (turtle-up! turtle)
      (turtle-forward! turtle radius)
      (turtle-turn! turtle 180)
      (turtle-down! turtle))))

; From Homework 5
(define turtle-spin-centered-polygon!
  (lambda (turtle radius sides angle copies)
    (repeat! copies (lambda (turtle radius sides angle)
                      (turtle-centered-polygon! turtle radius sides)
                      (turtle-turn! turtle angle)) turtle radius sides angle)))

(define leo-creative
  (lambda (turtle  color-list copies side-length sides scale-factor angle width height)
    (leo-creative-helper turtle color-list 0 copies side-length sides scale-factor angle width height)))

(define leo-creative-helper
  (lambda (turtle  color-list counter copies side-length sides scale-factor angle width height)
    (turtle-teleport! turtle (/ width 2) (/ height 2))
    (let* ([radius (map (r-s * side-length) (map (l-s expt scale-factor) (iota copies)))]
           [sides (map (o (r-s + 3) (r-s mod 10)) (iota copies))])
      (when (not (equal? copies counter))
        (turtle-set-color! turtle (list-ref color-list (mod counter (length color-list))))
        (turtle-spin-centered-polygon! turtle (list-ref radius counter) (list-ref sides counter) angle copies)
        (leo-creative-helper turtle color-list (+ 1 counter) copies side-length sides scale-factor angle width height)))))

; Figure 2
; The Sequence

; From Exam 2
(define turtle-square-sequence!
  (lambda (turtle copies side-length spacing sides)
    (repeat! copies (lambda ()
                      (turtle-polygon! turtle side-length sides)
                      (turtle-up! turtle)
                      (turtle-forward! turtle (+ side-length spacing))
                      (turtle-down! turtle)))))

; Continuing with the theme of naming things after Leo, we named this procedure, which is basically a composition of square-sequences, after him. :p
(define leonardo
  (lambda (turtle color-list copies side-length spacing sides width height)
    (leonardo1 turtle color-list 0 5 side-length spacing sides width height)))

(define leonardo1
  (lambda (turtle color-list counter copies side-length spacing sides width height)
    (let ([x (list 0.5 0.25 0.25 0.75 0.75)]
          [y (list 0.5 0.25 0.75 0.25 0.75)])
      (when (not (equal? copies counter))
        (turtle-set-color! turtle (list-ref color-list (mod counter (length color-list))))
        (repeat 6
                (lambda ()
                  (turtle-teleport! turtle (* width (list-ref x counter))
                                    (* height (list-ref y counter)))
                  (turtle-turn! turtle 60)
                  (turtle-square-sequence! turtle copies side-length spacing sides)))
        (leonardo1 turtle color-list (+ 1 counter) 5 side-length spacing sides width height)))))

; Figure 3
; The Grid
(define leo-grid
  (lambda (turtle shape color-list  side-length sides width height)
    (leo-grid-helper turtle shape color-list 0  side-length sides width height)))

(define leo-grid-helper
  (lambda (turtle shape color-list counter  side-length sides width height)
    (when (not (= counter (increment (round (/ height (* 2 side-length))))))
      (shape turtle side-length sides width height counter)
      (turtle-set-color! turtle (list-ref color-list (mod counter (length color-list))))
      (leo-grid-helper turtle shape color-list (+ 1 counter) side-length sides width height))))

(define grid
  (lambda (turtle side-length sides width height counter)
    (turtle-teleport! turtle (- (/ side-length 2)) (ceiling (* counter 2 side-length)))
    (repeat (round (+ 1 (/ width (* 2 side-length)))) turtle-polygon! turtle side-length sides)
    (turtle-face! turtle 0)))


; Figure 4
; The Creative Figure on top of The Grid
(define creative+grid
  (lambda (turtle colors side-length sides width height copies scale-factor angle)
    (leo-grid turtle grid colors side-length sides width height)
    (leo-creative turtle colors copies side-length sides scale-factor angle width height)))

; Figure 5
; The Sequence on top of The Creative Figure
; Uses code from Exam 2
(define creative+sequence
  (lambda (turtle colors copies copies-leo side-length sides sides-leo scale-factor angle width height spacing)
    (leo-creative turtle colors copies side-length sides scale-factor angle width height)
    (repeat 6 (lambda ()
                (turtle-teleport! turtle (/ width 2) (/ height 2))
                (turtle-turn! turtle 60)
                (turtle-square-sequence! turtle copies side-length spacing sides)))))

; Figure 6
; The Sequence on top of The Grid
; Uses code from Exam 2
(define grid+sequence
  (lambda (turtle colors copies side-length spacing sides width height)
    (leo-grid turtle grid colors side-length sides width height)
    (repeat 6 (lambda ()
                (turtle-teleport! turtle (/ width 2) (/ height 2))
                (turtle-turn! turtle 60)
                (turtle-set-color! turtle "black")
                (turtle-square-sequence! turtle copies side-length spacing sides)))))

; Figure 7
; Two Grids
(define superimposed-grids
  (lambda (turtle colors side-length sides width height)
    (leo-grid turtle grid colors side-length sides width height)
    (leo-grid turtle grid colors side-length (+ sides 2) width height)))

; Figure 8
; Three Grids
(define grid+grid+grid
  (lambda (turtle colors side-length sides width height)
    (leo-grid turtle grid colors  side-length sides width height)
    (leo-grid turtle grid colors side-length (+ sides 1) width height)
    (leo-grid turtle grid colors side-length (+ sides 3) width height)))

; Figure 9
; From Homework 5
(define leo-turtle-spin-polygon!
  (lambda (turtle color-list copies side-length sides angle)
    (leo-turtle-spin-polygon-helper! turtle 0 copies side-length sides angle)))

(define leo-turtle-spin-polygon-helper!
  (lambda (turtle counter copies side-length sides angle)
    (when (not (equal? copies counter))
      (turtle-set-color! turtle "white")
      (turtle-polygon! turtle side-length sides)
      (turtle-turn! turtle angle)
      (leo-turtle-spin-polygon-helper! turtle  (+ 1 counter) copies side-length (+ 1 sides) angle))))

(define spin+grid
  (lambda (turtle colors copies side-length-g side-length sides angles width height)
    (leo-grid turtle grid colors side-length-g sides width height)
    (turtle-teleport! turtle (* width .41) (* height .265))
    (leo-turtle-spin-polygon! turtle colors copies side-length sides angles)))

; Figure 10
; From Homework 5
(define leo-turtle-scale-polygon!
  (lambda (turtle color-list copies side-length sides scale-factor)
    (leo-turtle-scale-polygon-helper! turtle color-list 0 copies side-length sides scale-factor)))

(define leo-turtle-scale-polygon-helper!
  (lambda (turtle color-list counter copies side-length sides scale-factor)
    (let ([side-lengths (map (r-s * side-length) (map (l-s expt scale-factor) (iota copies)))])
      (when (not (equal? copies counter))
        (turtle-set-color! turtle "black")
        (turtle-polygon! turtle (list-ref side-lengths counter) sides)
        (turtle-face! turtle 30)
        (leo-turtle-scale-polygon-helper! turtle color-list (+ 1 counter) copies side-length (+ 1 sides) scale-factor)))))

(define grid+scale
  (lambda (turtle colors copies side-length sides scale-factor width height)
    (leo-grid turtle grid colors side-length sides width height)
    (leo-turtle-scale-polygon! turtle colors copies side-length sides scale-factor)))



; Variation 3
; Shapes:

; triangle
; square
; pentagon
; hexagon
; heptagon
; octagon
; nonagon
; decagon
; hendecagon
; dodecagon

; These shapes will be used to compose the various figures.




; The Main Procedure: Image Series


;;; Procedure
;;;   image-series
;;; Parameters
;;;   n, a number in the range of 0-999
;;;   height, pos integer
;;;   width, pos integer
;;; Purpose
;;;   generates the nth image in a series of at least 1000 related images
;;; Produces
;;;   image, a unique drawing in the image-series
;;; Preconditions
;;;   n, must be between 0-999
;;;   for program to work as intended, aspect ratio should be 1
;;; Postconditions
;;;   displays image
;;;   image is reproducible
;;;   image meets specified height and width
(define image-series
  (lambda (n width height)
    (let* ([hundred (floor (/ n 100))]
           [ten (floor (/ (- n (* hundred 100)) 10))]
           [one (- (- n (* 100 hundred)) (* ten 10))]
           [background (cond [(= hundred 0)
                              gradient-red/black]
                             [(= hundred 1)
                              gradient-green/black]
                             [(= hundred 2)
                              gradient-blue/black]
                             [(= hundred 3)
                              gradient-teal/black]
                             [(= hundred 4)
                              gradient-purple/black]
                             [(= hundred 5)
                              gradient-white/black]
                             [(= hundred 6)
                              gradient-mango]
                             [(= hundred 7)
                              gradient-dank]
                             [(= hundred 8)
                              gradient-fun]
                             [(= hundred 9)
                              gradient-murica]
                             (else (write "n is not a number")))]       
           [colorlist (cond [(= hundred 0)
                             red/black-accomp]
                            [(= hundred 1)
                             green/black-accomp]
                            [(= hundred 2)
                             blue/black-accomp]
                            [(= hundred 3)
                             teal/black-accomp]
                            [(= hundred 4)
                             purple/black-accomp]
                            [(= hundred 5)
                             white/black-accomp]
                            [(= hundred 6)
                             mango-accomp]
                            [(= hundred 7)
                             dank-accomp]
                            [(= hundred 8)
                             fun-accomp]
                            [(= hundred 9)
                             murica-accomp]
                            (else (write "n is not a number")))]
           [shape (cond [(= ten 0)
                         3]
                        [(= ten 1)
                         4]
                        [(= ten 2)
                         5]
                        [(= ten 3)
                         6]
                        [(= ten 4)
                         7]
                        [(= ten 5)
                         8]
                        [(= ten 6)
                         9]
                        [(= ten 7)
                         10]
                        [(= ten 8)
                         11]
                        [(= ten 9)
                         12]
                        (else (write "n is not a number")))])
      (cond [(= one 0)
             (leo-creative (turtle-new (image-show (background width height))) colorlist 8 (* (/ width 550) 10) shape 1.6 33 width height)]
            [(= one 1)
             (leonardo (turtle-new (image-show (background width height))) colorlist 5 (* (/ width 1000) 20) (* (/ width 550) 15) shape width height)]
            [(= one 2)
             (creative+grid (turtle-new (image-show (background width height))) colorlist (* (/ width 550) 15) shape width height 10 1.6 33)]
            [(= one 3)
             (creative+sequence (turtle-new (image-show (background width height))) colorlist 8 3 (* (round (/ width 550)) 10) shape shape 1.6 33 width height (* (/ width 550) 3))]
            [(= one 4)
             (leo-grid (turtle-new (image-show (background width height))) grid colorlist 15 shape width height)]
            [(= one 5)
             (grid+sequence (turtle-new (image-show (background width height))) colorlist 8 (* (/ width 1000) 15) (* (/ width 1000) 3) shape width height)]
            [(= one 6)
             ((grid+grid+grid (turtle-new (image-show (background width height))) colorlist 15 shape width height))]
            [(= one 7)
             (superimposed-grids (turtle-new (image-show (background width height))) colorlist 15 shape width height)]
            [(= one 8)
             (spin+grid (turtle-new (image-show (background width height))) colorlist 20 (*  (/ width 550) 15) (* (/ width 550) 50) shape 45 width height)]
            [(= one 9)
             (grid+scale (turtle-new (image-show (background width height))) colorlist 20 15 shape 1.2 width height)]
            (else (write "n is not a number"))))))



;Some particularly interesting images:
;(image-series 333 500 500)
;(image-series 732 500 500)
;(image-series 116 500 500)