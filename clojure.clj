(use '[clojure.java.io :only (reader)])

(let [file-name "fileio.txt"]
  (spit file-name "hello")
  (spit file-name "\nworld" :append true)
  (println (second (line-seq (reader file-name)))))

; Or equivalently, using the threading macro -> (also known as the paren remover):

; (use '[clojure.java.io :only (reader)])
; 
; (let [file-name "fileio.txt"] 
;   (spit file-name "hello") 
;   (spit file-name "\nworld" :append true) 
;   (-> file-name reader line-seq second println))