(ns reverse-string
  (:require
   [clojure.string :as clojure.string]))

(defn reverse
  [a acc]
  (if (empty? a)
    acc
    (reverse (rest a) (conj acc (first a)))))

(defn reverse-string [s]
  (clojure.string/join (reverse s '())))
