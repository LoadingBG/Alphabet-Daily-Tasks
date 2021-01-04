(comment
  "Author: Loading BG#7962"
  )

(defn nth-even [n]
  (- (* 2 n) 2))

(defn validate-email [email]
  (if (re-matches #".+@.+\..+" email) true false))

(defn- atbash-letter [l]
  (cond
    (Character/isUpperCase l) (char (+ (- (int \Z) (int l)) (int \A)))
    (Character/isLowerCase l) (char (+ (- (int \z) (int l)) (int \a)))
    :else l))
(defn atbash [s]
  (apply str (map atbash-letter s)))

(println "nth_even #1:" (nth-even 1))
(println "nth_even #2:" (nth-even 2))
(println "nth_even #3:" (nth-even 100))
(println "------------")
(println "validateEmail #1:" (validate-email "@gmail.com"))
(println "validateEmail #2:" (validate-email "hello.gmail@com"))
(println "validateEmail #3:" (validate-email "gmail"))
(println "validateEmail #4:" (validate-email "hello@gmail"))
(println "validateEmail #5:" (validate-email "hello@edabit.com"))
(println "-----------------")
(println "atbash #1:" (atbash "apple"))
(println "atbash #2:" (atbash "Hello world!"))
(println "atbash #3:" (atbash "Christmas is the 25th of December"))
