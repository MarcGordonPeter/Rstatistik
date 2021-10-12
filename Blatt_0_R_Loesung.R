########## Aufbaumodul Statistik

########## Blatt_0_R
########## Loesung

###### 0.5 ####################################################################
?choose

help(choose)




###### 0.6 ####################################################################

### a)

# Die einfachste Variante (bei kurzen Vektoren):
c(3, 12, 21, 30, 39)

?seq

seq(from = 3, to = 39, by = 9)

seq(from = 3, to = 39, length.out = 5)

# Es ist auch haendisch moeglich:
0:4
0:4 * 9
0:4 * 9 + 3

### b)
rep(c(6, 8), times = 5)

### c)
10:20

seq(from = 10, to = 20, by = 1)

### d)
rep(c(6, 8), each = 5)

# Es geht auch durch sortieren:
sort(rep(c(6, 8), times = 5))




###### 0.7 ####################################################################

x = 0:6
y = c(1, 2)
x + y

# Wie hat R diese Summe berechnet?


###### 0.8 ####################################################################

x = c(2, 5, 7, 3, 8, 10, 1)
y = c(8, 9, 2.5, 3, 7, 7, 1)

### a)
x[1:6]        # Auf diese Art waehlt man Teile eines Vektors aus
x[1:6]^2      # Elementweises Quaddrieren ist auch moeglich.
sum(x[1:6]^2) # sum bildet die Summe der Elemente eines Vektors.

# b)
sum(1 / x[2:5])

# c)
sum(x[1:6] + y[1:6])




###### 0.9 ####################################################################

# Wir erstellen die Matrizen genauso wie in 0.4.
A = matrix(c(2, 1, 4, 6), nrow = 2)
A
B = matrix(c(1, 8, 3, 2, 9, 4), nrow = 2)
B

# Bei der Matrix C ist es nun einfacher Sie ueber die Zeilen zu befuellen.
# Dazu gibt es das Argument byrow.
C = matrix(c(1:100, 2:101, 3:102), nrow = 3, byrow = TRUE)
C


### a)
t(C) %*% C               # t transponiert die Matrix, %*% Matrixmultiplikation.
diag(t(C) %*% C)         # diag gibt die Diagonalelement einer Matrix zurueck.
sum(diag(t(C) %*% C))    # sum kennen wir schon, die Summe der Vektoreintraege.

# b)
solve(A)                 # solve bildet die Inverse der Matrix A.
solve(A) %*% A           # Test, ob es auch wirklich stimmt.
t(solve(A))              # t wieder die Transposition.
t(solve(A)) %*% B

# c)
c(3, 4, 7) %*% t(B)      # Vektoren in R sind immer Zeilenvektoren.





###### 0.10 ###################################################################

# Zunaechst erzeugen wir einen Vektor fuer die Jahre, z.B. die ersten 10 Jahre.
te = 0:10
# Erzeuge nun die Funktionswerte an den Stellen der Jahre 0 bis 10. Man bemerke
# hier, dass auch die Potenz elementweise berechnet wird. An vielen Stellen ist
# in R dieses sogenannte vektorielle rechnen moeglich, bei dem Berechnung gleich
# fuer einen ganzen Vektor an Werten durchgefuehrt werden.
h.te = -650 * 0.87^te + 740

# Mit der Funktion plot koennen wir die Funktionswerte an den Stellen 0 bis 10
# nun zeichnen. Da wir die Funktion nur an 11 Punkten auswerten, zeichnen wir
# auch nur diese Punkte ein.
plot(te, h.te)

# Mit den Argumenten xlab und ylab, sowie main k??nnen wir Beschriftungen hinzu-
# fuegen. las dreht die Skalenbeschriftung an der vertikalen Achse.
plot(te, h.te, xlab = "Zeit t in Jahren", ylab = "H??he h(t) in cm", 
     las = 1, main = "Baumwachstum")

# Schliesslich aendern wir mit ylim noch den Zeichenbereich, weil wir den 
# Ursprung in unserer Grafik ebenfalls darstellen wollen.
plot(te, h.te, xlab = "Zeit t in Jahren", ylab = "H??he h(t) in cm", 
     las = 1, main = "Baumwachstum", ylim = c(0, max(h.te)))

# Jetzt wollen wir wissen, wann die Hoehe 400 cm ueberschritten hat.
# Dazu zeichnen wir eine horizontale Linie bei h = 400 mit dem Befehl abline und 
# dem Argument h. (h fuer horizontal)
abline(h = 400)
# Per Augenschein ist leicht zu erkennen, dass ab dem fuenften Jahr der Baum
# hoeher als 4 m ist.

# Wir fuegen deshalb noch eine gestrichelte Linie bei t = 5 hinzu. Wir verwenden
# wieder abline mit den Argumenten v (fuer vertikal) und lty = 2 damit die Linie
# nicht durchgezogen, sondern gestrichelt ist.
abline(v = 5, lty = 2)




###### 0.11 ###################################################################


### a)
# Die Funktion curve zeichnet elementare Funktionen wie zum Beispiel den
# Sinus. Mit dem Argument xlim kann ein Intervall eingeben, in dem die Funktion
# gezeichnet werden soll.
curve(sin, xlim = c(0, 2 * pi))
# Bemerkung: Man uebergibt die Funktion sin als Argument.
# Wenn Sie sin() schreiben, ist dies eine Funktionsauswertung. 
# (sogar ohne Argument, daher wird dies in einem Fehler enden.)


### b)
curve(sin, xlim = c(0, 2 * pi), las = 1)
# Das Argument dreht die Achsenmarkierungen.



### c)
# Add the cosine function by setting add = TRUE
# col = "red" changes the drawing color
curve(cos, add = TRUE, col = "red")

### d)
curve(0.5 * sin(x), add = TRUE, col = "blue")
# Jetzt muessen wir ein Argument angeben, dieses muss x sein, damit es 
# funktioniert.

### e)
# Wir fuegen noch eine Legende zur Grafik hinzu.
# "bottomleft" gibt die Position der Legende an, 
# das Argument legend ist der Text, der in der Legende stehen soll,
# wir setzten lwd auf einen Wert groesser als 0, damit Linien in der Legende
# gezeichnet werden,
# col bestimmt die Farbe dieser Linien.

legend(x = "bottomleft", legend = c("sin", "cos", "0.5sin"), 
       col = c("black", "red", "blue"), lwd = 0.1)



# Die Beschriftung der vertikalen Achse passt nun natuerlich nicht mehr, da
# Sinus, Kosinus und 0.5*Sinus dargestellt werden.
# Dies beheben wir durch einen Beschriftung der vertikalen Achse.


curve(sin, xlim = c(0, 2 * pi), ylab = "f(x)", las = 1)
curve(cos, add = TRUE, col = "red")
curve(0.5 * sin(x), add = TRUE, col = "blue")
legend(x = "bottomleft", legend = c("sin", "cos", "0.5sin"), 
       col = c("black", "red", "blue"), lwd = 0.1)
