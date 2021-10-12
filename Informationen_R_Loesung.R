########## Aufbaumodul Statistik

########## A priori Information R
########## Loesung

# Die Raute # beginnt eine sogenannte Kommentarzeile, d.h. alles nach der 
# Raute in dieser Zeile wird von R ignoriert. Ignoriert heisst in dem Fall,
# dass R es nicht als ausfuehrbaren Code liest.

# Man sollte seinen Programmcode stets hilfreich kommentieren, damit man selbst
# aber auch andere, die den Code lesen, ihn leichter verstehen koennen.

# Es ist durchaus ueblich auf Englisch zu kommentieren, hier werden wir aber 
# auf Deutsch kommentieren. Allerdings sollten Sie auf Umlaute und sz
# verzichten, da je nach Betriebssystem oder Programmen, die Sie benutzen, 
# Textzeichen unterschiedlich gespeichert werden. In einigen Faellen gehen dabei
# Zeichen, die untypisch fuer Englische Texte sind verloren.

###### 0.1 ####################################################################
### a)
100+5   # schlechter Programmierstil
100 + 5 # besser sind Leerzeichen zwischen Zahlen und Operatoren (Operatoren
        # sind unter anderem +, -, *, /)


### b)
10 0 + 5 # R interpretiert das Leerzeichen als Trennung, d.h. es liest erst
         # eine Zehn und danach eine Null. Es gibt aber keine Verknuepfung 
         # bzw. einen Operator zwischen den beiden Zahlen. Daher weiss R nicht,
         # was es mit den beiden tun soll und produziert eine Fehlermeldung

### c)
(2 + 5) * 4 # Klammergesetze der Mathematik sind in R umgesetzt

### d)
2 + 5 * 4 # Punkt vor Strichrechnung

### e)
100 + "fuenf"
# Eine Zahl (hier 100) und eine sogenannte Zeichenkette "fuenf" koennen nicht 
# addiert werden

### f)
log(23^2)
# log ist in R standardmaessig der natuerliche Logarithmus.
# Wichtig ist, dass Sie Klammern um den Ausdruck setzen, dessen Logarithmus
# Sie berechnen wollen.

### g)
sqrt(345 - 224)
# sqrt berechnet die Quadratwurzel, wieder sind Klammern erforderlich

# h)
sin(1.5 * pi)
# sin ist die Sinusfunktion, pi ist eine festgelegte Standardvariable in R,
# die (naeherungsweise) den Wert der Kreiszahl pi hat.


###### 0.2 ####################################################################

### a)
log2(exp(5))
# log2 berechnet den Logarithmus zur Basis 2, wieder sind die Klammern wichtig.


### b)
cos(0.5 * pi)
# cos ist die Kosinusfunktion, wieder Klammern noetig.
# Das Ergebnis muesste eigentlich 0 sein, bei Progammsoftware kann es aber
# immer zu Rundungsfehlern oder numerischen Ungenauigkeiten kommen.
# Numerische Ungenaugikeit bedeutet, dass der Compute nicht exakt rechnet,
# sondern Rundungsfehler macht, gerade wenn eine irrationale Zahl wie die 
# Kreiszahl pi involviert ist.

cos(pi / 2 + 2 * pi)
# Aufgrund der Periode 2 * pi des Kosinus muesste auch hier das Ergebnis 0 sein.
# Durch Rundungsfehler passiert dies aber nicht. Darueberhinaus ist der 
# Rundungsfehler sogar ein anderer als oben.

cos(1.5 * pi)
# Auch hier muesste das Ergebnis 0 sein.

# Fazit: R rechnet nicht immer exakt.

### c)
34 * 16 / log(10^12)
# e12 ist die wissenschaftliche Schreibweise fuer "10 hoch 12", also eine
# 10 mit 12 Nullen.


###### 0.3 ####################################################################

x = 5 # Die Variable auf der linken Seite wird gleich dem Wert auf der rechten
      # rechten Seite gesetzt
x
ls()  # Listet alle Variablen auf, die momentan existieren
rm(x) # So kann eine Variable wieder entfernt werden

x <- 5 # Dieser Befehl kann anstelle von x = 5 verwendet werden
x      
ls()

x^2  # So berechnet man das Quadrat einer Variablen

rm(list = ls())   # Zum löschen der gesamten Environment (alle erzeugten Variablen werden gelöscht)

# Wir erzeugen nun die beiden Variablen wie gefordert
y = 10
z = -y # Bemerken Sie: Auf der rechten Seite des Gleichheitszeichens koennen 
       #               auch Variablen stehen.

# Berechnung der geforderten Ausdruecke
1 / (y + z)

(sin(y))^2

exp(y)

(2 * pi)^y

# Bermerkung: Befehle wie z.B.
x = x + 1
# sind bei Programmiersprachen erlaubt und sinnvoll, da es Wertzuweisungen und
# keine Gleichungen.


# Beispiele fuer zulaessige Variablennamen
zaehler = 1L
.zaehler = 1L
._zaehler = 1L
der_zaehler = 1L
der_zaehler2 = 2L

ls()
# Bemerkung: Alle Variablen, deren Name mit einem . beginnt sind verborgen,
#            sogenannte hidden variables.

# Beispiele unzulaessiger Variablennamen
_kein.zaehler = 0.1
2zaehler = 0.1
.2zaehler = 0.01



###### 0.4 ####################################################################

### a)
A = matrix(c(2, 1, 4, 6), nrow = 2)
A
B = matrix(c(1, 8, 3, 2), nrow = 2)
B
# Bemerkung: Eine Matrix wird spaltenweise gefuellt.
# Wenn man eine Matrix erstellt, muss entweder die Anzahl der Zeilen (nrow) 
# oder die Anzahl der Spalten (ncol) angegeben werden.

matrix(c(2, 1, 4, 6), nrow = 2) * matrix(c(1, 8, 3, 2), nrow = 2)
# Dies entspricht einer elementweisen Multiplikation der Matrizen.

### b)
matrix(c(2, 1, 4, 6), nrow = 2) %*% matrix(c(1, 8, 3, 2), nrow = 2)
# Dies entspricht der gew??hnlichen Matrixmultiplikation.


### c)
A = matrix(c(2, 1, 4, 6), nrow = 2)
C = matrix(c(1, 8, 3, 2, 9, 4), nrow = 2)
# Matrizen erstellt wie oben.

matrix(c(2, 1, 4, 6), nrow = 2) * matrix(c(1, 8, 3, 2, 9, 4), nrow = 2)
# Die Dimensionen der Matrizen stimmen nicht ueberein.
# Eine elementweise Multiplikation ist daher nicht moeglich.

matrix(c(2, 1, 4, 6), nrow = 2) %*% matrix(c(1, 8, 3, 2, 9, 4), nrow = 2)
# Die uebliche Matrixmultiplikation ist hier zulaessig.


matrix(c(2, 1, 3, 4, 6, 5), nrow = 3)
# oder:
rbind(A,c(3,5))

matrix(c(1, 8, 3, 2, 9, 4, 7, 6), nrow = 2)
# oder:
cbind(C,c(7,6))
