# m122_wordleBash

Ein Wordle-Spiel programmiert in Bash für die Schule.

Das Programm startet mit der Definition einiger Variablen, einschliesslich des Dateinamens, der eine Liste von Wörtern enthält ("wörter.txt"), der maximal zulässigen Anzahl von Versuchen (5) und des Dateinamens, in dem die Ergebnisse gespeichert werden ("ergebnis.txt").

Die Funktion `getSecretWord()` liest die Wortdatei ein und speichert alle Wörter in einem Array. Dann wählt sie ein zufälliges Wort aus dem Array mithilfe der Variable `RANDOM` aus und gibt es zurück.

Die Funktion `isLetterInWord()` hat zwei Parameter: einen Buchstaben und ein geheimes Wort. Sie überprüft, ob der Buchstabe im geheimen Wort vorhanden ist, indem sie eine bedingte Anweisung und Musterabgleich verwendet. Wenn der Buchstabe gefunden wird, gibt sie 0 zurück, sonst gibt sie 1 zurück.

Die Funktion `playWordle()` ist die Hauptfunktion des Spiels. Sie beginnt damit, ein geheimes Wort mithilfe von `getSecretWord()` zu erhalten und Variablen für die Anzahl der Versuche und geratenen Buchstaben zu initialisieren.

In einer Schleife fordert das Programm den Benutzer auf, einen Buchstaben oder ein Wort als Tipp einzugeben. Wenn die eingegebene Vermutung dem geheimen Wort entspricht, gratuliert das Programm dem Spieler, schreibt das geheime Wort und die Anzahl der Versuche in die Ergebnisdatei und kehrt aus der Funktion zurück.

Wenn die eingegebene Vermutung nicht dem geheimen Wort entspricht, überprüft das Programm mithilfe der Funktion `isLetterInWord()`, ob der erste Buchstabe der eingegebenen Vermutung im geheimen Wort enthalten ist. Wenn dies der Fall ist, wird der Buchstabe zur Variable `guessedLetters` hinzugefügt.
