(comment
  "Author: Loading BG#7962")

(require '[clojure.string :as string])

(defn average-char
  [string]
  (->> string
       (mapv int)
       (#(/ (reduce + 0 %) (count %)))
       char))

(defn space
  [sentence]
  (str (get sentence 0) (string/lower-case (string/replace (subs sentence 1) #"([A-Z])" " $1"))))

(defn sort-strs
  [sentence]
  (->> (string/split sentence #"\s+")
       (sort-by average-char)
       (string/join " ")))

(println "averageChar #1:" (average-char "Hello"))
(println "averageChar #2:" (average-char "Yes"))
(println "averageChar #3:" (average-char "aaaa"))
(println "----------")
(println "space #1:" (space "HelloWorld!"))
(println "space #2:" (space "HowAreYou?"))
(println "space #3:" (space "Example"))
(println "space #4:" (space "Simple,Right?"))
(println "----------")
(println "sort #1:" (sort-strs "Hello Yes aaaa"))
