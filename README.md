# HW-3
## Aristotle Univerity of Thessaloniki

---
* Εργαστήριο Β Ομαδα 3 - 3η Εργασία

---
| **Ονομα**       | ΑΕΜ          |
| --- | -------------- |
| Αιμίλιος Δραγκίνης | 9364 |
| Χρήστος Παυλίδης | 9480 |

---
## Βήμα 1
**1)**



* **Leakage power** ορίζεται ως η ισχύς που καταναλώνει ένας επεξεργαστής η οποία οφείλεται σε
μικρά ρεύματα διαρροής που ρέουν συνέχεια μέσω του υποστρώματος και των πυλών των τρανζίστορ,
καθώς αυτά βρίσκονται υπό τάση. Τα ρεύματα αυτά οφείλονται στην ατέλεια των τρανζίστορ και η ένταση
τους εξαρτάται από την τιμή της τάσης, τα χαρακτηριστικά και την κατασκευή των τρανζίστορ
αλλά και από την θερμοκρασία. O επεξεργαστής καταναλώνει υποχρεωτικά και συνεχόμενα leakage power για να βρίσκεται σε λειτουργία.
Μπορούμε να απαλλαγούμε εν μέρη από την κατανάλωση leakage ισχύος κάνοντας power gating.

* **Dynamic power** προέρχεται από την λειτουργία τρανζίστορ και των μνημών ενός επεξεργαστή. Όταν τα τρανζίστορ
και οι λογικές πύλες εναλλάσσουν την έξοδο τους, ενέργεια καταναλώνεται καθώς η χωρητικότητα
μέσα τους φορτίζεται και αποφορτίζεται. Η Dynamic power είναι ανάλογη της χωρητικότητας,
της συχνότητας και του τετράγωνου της τιμής της τάσης. 
Παρ'ότι με το πέρας του χρόνου μειώνεται η τάση που χρειαζόμαστε για να κρατήσουμε την ίδια συχνότητα
στα κυκλώματά μας λόγο της εξέλιξης της τεχνολογίας, θέλουμε παράλληλα να αυξήσουμε και την συχνότητα στην οποία δουλεύουμε.
Καθώς όμως η αύξηση της συχνότητας προϋποθέτει και αύξηση της τάσης για λόγους σταθερότητας
του συστήματος, το Dynamic Power μπορεί να αυξηθεί αρκετά.

Καθώς διαφορετικά προγράμματα έχουν διαφορετικό είδος αλλά και αριθμό εντολών, 
συμπεραίνουμε ότι θα έχουν και διαφορετικό dynamic power σύμφωνα με τις ανάγκες 
του καθενός. Αυτό δεν ισχύει και για το leakage power το οποίο εξαρτάται από τον
αριθμό των τρανζίστορ σε ένα μηχάνημα και την εκάστοτε αρχιτεκτονική, όχι τον αριθμό 
των state switch.  
Αν τώρα θεωρήσουμε ότι έχουμε σταθερό αριθμό state switch / second, εκτός απο το leakage power
που προφανώς δεν εξαρτάται απο τον χρόνο καθώς είναι η σταθερή ισχύς που πληρώνουμε για να κρατήσουμε
το σύστημα ανοιχτό, μπορούμε να πούμε ότι και το dynamic power δεν εξαρτάται από τον χρόνο εκτέλεσης 
του προγράμματος καθώς έχουμε σταθερό energy/sec=power. Αν πούμε δηλαδή να κάνουμε πολλαπλασιασμό 
2 μικρών και 2 μεγαλύτερων πινάκων, το δεύτερο θα πάρει περισσότερη ώρα όμως το είδος των εντολών είναι το ίδιο 
και ο αριθμός αυτών ανάλογος του μεγέθους και άρα του χρόνου που θα πάρει. Άρα έχουμε σταθερό instructions/time
-> σταθερό energy/sec=power.


**2)**

Έστω ότι έχουμε τους δύο επεξεργαστές Α και Β με κατανάλωση 4W και 40W αντίστοιχα και 
χρόνο διεκπεραίωσης X και Y αντίστοιχα. Ο μόνος τρόπος ο δεύτερος επεξεργαστής έχει μεγαλύτερη διάρκεια
μπαταρίας είναι να ξοδεύει συνολικά λιγότερη ενέργεια άρα θα πρέπει EnergyA>EnergyB =>
Apower\*X>Bpower\*Y => 4\*X>40\*Y => Y<X/10 άρα θα πρέπει ο δέυτερος επεξεργαστής να είναι τουλάχιστον 10
φορές πιο γρήγορος. Το McPAT μας δίνει μόνο αποτελέσματα σχετικά με την ισχύ που καταναλώνουμε και όχι 
για την ενέργεια επομένως δεν μπορούμε να βγάλουμε συμπεράσματα από. Για να καταλήξουμε σε κάποιο συμπέρασμα
χρειαζόμαστε και κάποια στατιστικά σχετικά με την ταχύτητα των επεξεργαστών.


**3)**

Προσμοιώνουμε στον McPat τους Χeon και ΑΡΜ Α9 και βρισκουμε τα παρακατω αποτελέσματα.

| |Xeon      | ARM A9         |
| --- | -------------- |---|
| total leakage | 36.8319 W | 0.108687 W
| runtime dynamic | 72.9199 W | 2.96053 W
| total during runtime| 109.7518 W | 3.069217 W

---
Έστω οτι ο Xeon ολοκληρώνει την διεργασία σε a seconds. Τότε ο ARM A9 την ολοκληρώνει σε 40a seconds. Επομένως *κατα την λειτουργία* της εφαρμογής
στους δύο επεξεργαστές έχουμε τις παρακάτω καταναλώσεις ενέργειας:


* **Χeon** E1 = 109.7518 * a J
* **ARM A9** E2  = 3.069217 * 40a  = 122.76868 * a J

***Βλέπουμε ότι Ε1 < Ε2***, επομενως κατά την εκτελεση του προγραμματος ο xeon είναι ο πιο power efficient από τους δυο.
Κοιτάζοντας όμως τα total leakage των δύο επεξεργαστών βλέπουμε ότι το leakage του Xeon είναι 36.8319/0.108687=338,9 φορές μεγαλύτερο!
Καθώς δεν διακοπτεται η λειτουργια του συστηματος μετα την ολοκληρωση της εκτέλεσης της εφαρμογής, καταλαβαίνουμε ότι ο Xeon θα
καταναλώνει πολύ μεγαλύτερη idle ισχύ, η οποία μάλιστα είναι σχεδόν η μισή απ'ότι η runtime dynamic ισχύς του, σε αντίθεση με τον ARM
ο οποίος καταναλώνει leakage σχεδόν 30 φορές μικρότερο απο το runtime dynamic του!
Συμπεραίνουμε λοιπόν ότι o Xeon δεν μπορεί να είναι πιο energy efficient από τον ARM παρά τη διαφορά στην επίδοση και ότι το χάσμα
μεταξύ των δύο θα μεγαλώνει όσο αυξάνεται ο χρόνος λειτουργίας έπειτα το πέρας της εφαρμογής.

---
## Βήμα 2

Στα παρακάτω γραφήματα βλέπουμε το EDP (Energy-Delay-Product) που υπολογίζεται ως το γινόμενο Energy(j) * Delay(s) για τις διάφορες μορφοποιήσεις του συστήματος προσομοίωσής μας που είχαμε κάνει στο δεύτερο εργαστήριο σε λογαριθμική κλίμακα ώστε να φαίνονται όλα στο ίδιο διάγραμμα.
![](https://github.com/pavlidic/HW-3/blob/main/figures/Figure1.jpg)
![](https://github.com/pavlidic/HW-3/blob/main/figures/Figure2.jpg)
![](https://github.com/pavlidic/HW-3/blob/main/figures/Figure3.jpg)
![](https://github.com/pavlidic/HW-3/blob/main/figures/Figure4.jpg)
![](https://github.com/pavlidic/HW-3/blob/main/figures/Figure5.jpg)
![](https://github.com/pavlidic/HW-3/blob/main/figures/Figure6.jpg)
![](https://github.com/pavlidic/HW-3/blob/main/figures/Figure7.jpg)
  
  
Επίσης, στα παρακάτω γραφήματα βλέπουμε πως αλλαγές στις παραμέτρους αυτές αλλάζουν τα Area, Runtime Dynamic, Subthreshold Leakage και Gate Leakage.  

![](https://github.com/pavlidic/HW-3/blob/main/graphs/area.png)
![](https://github.com/pavlidic/HW-3/blob/main/graphs/gateL.png)
![](https://github.com/pavlidic/HW-3/blob/main/graphs/subL.png)
![](https://github.com/pavlidic/HW-3/blob/main/graphs/dyn.png)
![](https://github.com/pavlidic/HW-3/blob/main/graphs/pCL2.png)
![](https://github.com/pavlidic/HW-3/blob/main/graphs/pAll.png)

όπου έχουμε:

value/testvar| 1 | 2 | 3
---|---|---|---
cacheline|32b|64b|128b
L1d/i (size)|32kb|64kb|128kb
L2 (size)|512kb|1024kb|4096kb
L1d/i/2 assoc|1|2|4


Από το διάγραμμα αλλαγής του μεγέθους cacheline βγάζουμε το συμπέρασμα ότι μάλλον άξιζαν τελικά οι αλλαγές που προτείναμε στο προηγούμενο εργαστήριο για την βελτιστοποίηση του κόστους\*cpi καθώς βλέπουμε ότι ο χρόνος που κερδίζουμε από τις αλλαγές αυτές είναι τόσο σημαντικός που το EDP κατεβαίνει επίσης σημαντικά παρά το την αύξηση της κατανάλωσης ισχύος. Σχεδόν σε όλες τις άλλες περιπτώσεις όμως βλέπουμε ότι το EDP αυξάνεται με την αύξηση της πολυπλοκότητας του συστήματός μας το οποίο είναι λογικό καθώς δεν είχαμε παρατηρήσει κάποια βελτίωση στους χρόνους των προσομοιώσεων απο το δεύτερο εργαστήριο.

Επίσης, αν δούμε το αρχείο [printOut.csv](https://github.com/pavlidic/HW-3/blob/main/printOut.csv) θα παρατηρήσουμε ότι το μόνο που αλλάζει μεταξύ των διαφορετικών προγραμμάτων για τις ίδιες μεταβλητές είναι το dynamic power ενώ όλα τα άλλα παραμένουν σταθερά, κάτι το οποίο περιμέναμε από το πρώτο βήμα.

---
- Προσομοιωτές επεξεργαστών οπως ο gem5 και ο mcpat, πραγματοποιουν την προσομοιωση με βαση προκαθορισμενες  σχεδιασεις του υλικου (cache, Alu) οι οποιες όμως όσο και να προσπαθούμε να τελειωποιήσουμε, θα διαφέρουν από την ακριβη σχεδιαση του υλικού  που προσομοιωνεται. Επομένως, αν και ποσοτικά η προσέγγιση αυτων των προσομοιωτων ειναι ακριβής, ποιοτικα υπαρχουν σημαντικες αποκλίσεις, δεδομενου οτι οι ακριβείς υλοποιήσεις δεν ειναι παντα διαθεσιμες, γνωστες ή εύκολο να προσομοιωθουν. Το ίδιο συμβαίνει και σε χαμηλότερο επιπεδο , οπου δεν ειναι δυνατη η ακριβής μοντελοποιηση των τρανζιστορ, καθώς οι ιδιότητες τους εξαρτωνται σημαντικα απο κατασκευαστικες παραμέτρους.

- Κατά την δημιουργία
των εξομοιωτών γίνονται αρκετές υποθέσεις
και αγνοούνται διάφορα φαινόμενα τα
οποία επίσης είναι δύσκολο ή και αδύνατο να
μοντελοποιηθούν. Εκτός αυτού, το McPAT
συγκεκριμένα για τα αποτελέσματά του
βασίζεται σε στατιστικά τα οποία για
το ίδιο πρόγραμμα και αρχιτεκτονική
μπορεί να διαφέρουν από εξομοιωτή σε
εξομοιωτή. Καθώς βασίζεται σε στατιστικά
καταλαβαίνουμε ότι τα αποτελέσματά του
δεν θα έχουν και μηχανική ακρίβεια.
Επιπλέων, τα αποτελέσματα του McPAT, ακόμη
και στο paper της ανακοίνωσής του, περιέχει
παραγράφους με το όνομα “validation” στα
οποία οι συγγραφείς προσπαθούν να
δείξουν πάλι μέσα από πραγματικά
στατιστικά την ομοιότητα των αποτελεσμάτων
η οποία δεν είναι ποτέ τέλεια. 
- Τέλος,
καθώς κανένα από τα δύο προγράμματα δεν
αναπτύχθηκε αποκλειστικά για την χρήση
με το άλλο και άρα δεν είναι βελτιστοποιημένο
ως προς το τέλειο complatibility μονάχα μεταξύ
των δύο, περιμένουμε πως και αυτό θα μας
δημιουργήσει αρκετά σφάλματα.

---
### Sources:
1. [Leakage (electronics) - Wikipedia](https://en.wikipedia.org/wiki/Leakage_(electronics))
2. [Processor power dissipation - Wikipedia](https://en.wikipedia.org/wiki/Processor_power_dissipation)
3. [Dynamic voltage scaling - Wikipedia](https://en.wikipedia.org/wiki/Dynamic_voltage_scaling)
4. [Dynamic frequency scaling - Wikipedia](https://en.wikipedia.org/wiki/Dynamic_frequency_scaling)
5. [Introduction to McPAT](https://www.hpl.hp.com/research/mcpat/micro09.pdf)
