(comment
  "Author: Loading BG#7962")

(defn check [nums]
  (loop [i 0]
    (cond
      (= i (dec (count nums))) "increasing"
      (> (get nums i) (get nums (inc i)))
        (loop [j 0]
          (cond
            (= j (dec (count nums))) "decreasing"
            (< (get nums j) (get nums (inc j))) "neither"
            :else (recur (inc j))))
      :else (recur (inc i)))))

(defn within-tri? [[[x1 y1] [x2 y2] [x3 y3]] [x y]]
  (.contains (java.awt.Polygon. (int-array [x1 x2 x3]) (int-array [y1 y2 y3]) 3) x y))

(defn color [pos]
  (= (mod (int (get pos 0)) 2) (mod (int (get pos 1)) 2)))
(defn bishop [start end moves]
  (= (color start) (color end)))

(println "check #1:" (check [1 2 3]))
(println "check #2:" (check [3 2 1]))
(println "check #3:" (check [1 2 1]))
(println "---------")
(println "withinTriangle #1:" (within-tri? ['(1 4) '(5 6) '(6 1)] '(4 5)))
(println "withinTriangle #2:" (within-tri? ['(1 4) '(5 6) '(6 1)] '(3 2)))
(println "---------")
(println "bishop #1:" (bishop "a1" "b4" 2))
(println "bishop #2:" (bishop "a1" "b5" 5))
(println "bishop #3:" (bishop "f1" "f1" 0))
